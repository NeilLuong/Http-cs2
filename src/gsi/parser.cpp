#include "gsi/parser.hpp"
#include <nlohmann/json.hpp>
#include <iostream>

namespace http_server {
    namespace gsi {
        // ─────────────────────────────────────────────────────────────────────────────
        // Helper: Safely extract an optional value from JSON
        //
        // CONCEPT: "Look before you leap" - check existence and type before extracting.
        // This prevents exceptions and handles partial payloads gracefully.
        // ─────────────────────────────────────────────────────────────────────────────
        template <typename T>
        std::optional<T> safe_get(const nlohmann::json& j, const std::string& key) {
            if (j.contains(key) && !j[key].is_null()) {
                try {
                    return j[key].get<T>();
                } catch (const nlohmann::json::exception& e) {
                    std::cerr << "Warning: Failed to parse key '" << key << "': " << e.what() << "\n";
                }
            }
            return std::nullopt;
        }

        // Nested safe access: j["outer"]["inner"], Russian doll style
        template<typename T>
        std::optional<T> safe_get_nested(const nlohmann::json& j, const std::string& outer, const std::string& inner) {
            if (j.contains(outer) && j[outer].is_object()) {
                return safe_get<T>(j[outer], inner);
            }
            return std::nullopt;
        }

        // ─────────────────────────────────────────────────────────────────────────────
        // parse_player_state: Extract player.state fields
        // ─────────────────────────────────────────────────────────────────────────────
        PlayerState parse_player_state(const nlohmann::json& j) {
            PlayerState state;
            if (j.contains("state") && j["state"].is_object()) {
                const auto& s = j["state"];
                state.health = safe_get<int>(s, "health");
                state.armor = safe_get<int>(s, "armor");
                state.money = safe_get<int>(s, "money");
            }
            return state;
        }

        // ─────────────────────────────────────────────────────────────────────────────
        // parse_player_stats: Extract player.match_stats fields
        // ─────────────────────────────────────────────────────────────────────────────
        PlayerStats parse_player_stats(const nlohmann::json& j) {
            PlayerStats stats;
            if (j.contains("match_stats") && j["match_stats"].is_object()) {
                const auto& ms = j["match_stats"];
                stats.kills = safe_get<int>(ms, "kills");
                stats.assists = safe_get<int>(ms, "assists");
                stats.deaths = safe_get<int>(ms, "deaths");
            }
            return stats;
        }

        // ─────────────────────────────────────────────────────────────────────────────
        // parse_player: Extract all player-related fields
        // ─────────────────────────────────────────────────────────────────────────────
        PlayerUpdate parse_player(const nlohmann::json& j) {
            PlayerUpdate player;
            if (j.contains("player") && j["player"].is_object()) {
                const auto& pj = j["player"];
                player.steamid = safe_get<std::string>(pj, "steamid");
                player.team = safe_get<std::string>(pj, "team");
                player.state = parse_player_state(pj);
                player.stats = parse_player_stats(pj);
            }
            return player;
        }

        // ─────────────────────────────────────────────────────────────────────────────
        // parse_team_score: Extract score from a team object
        // ─────────────────────────────────────────────────────────────────────────────
        TeamScore parse_team_score(const nlohmann::json& j, const std::string& team_key) {
            TeamScore team_score;
            if (j.contains(team_key) && j[team_key].is_object()) {
                const auto& team = j[team_key];
                team_score.score = safe_get<int>(team, "score");
            }
            return team_score;
        }

        // ─────────────────────────────────────────────────────────────────────────────
        // parse_map: Extract all map-related fields
        // ─────────────────────────────────────────────────────────────────────────────
        MapUpdate parse_map(const nlohmann::json& j) {
            MapUpdate map;
            if (j.contains("map") && j["map"].is_object()) {
                const auto& mj = j["map"];
                map.name = safe_get<std::string>(mj, "name");
                map.round = safe_get<int>(mj, "round");
                map.phase = safe_get<std::string>(mj, "phase");
                map.team_ct = parse_team_score(mj, "team_ct");
                map.team_t = parse_team_score(mj, "team_t");
            }
            return map;
        }

        // ─────────────────────────────────────────────────────────────────────────────
        // parse_gsi_update: Main entry point - parse complete GSI payload
        // ─────────────────────────────────────────────────────────────────────────────
        GsiUpdate parse_gsi_update(const std::string& json_str) {
            GsiUpdate update;
            try {
                nlohmann::json j = nlohmann::json::parse(json_str);
                update.timestamp = safe_get_nested<std::uint64_t>(j, "provider", "timestamp");
                update.map = parse_map(j);
                update.player = parse_player(j);
            } catch (const nlohmann::json::exception& e) {
                std::cerr << "Error: Failed to parse GSI JSON: " << e.what() << "\n";
                // return empty update 
            }
            return update;
        }
    }
}