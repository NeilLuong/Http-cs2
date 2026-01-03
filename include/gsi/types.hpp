#pragma once

// ─────────────────────────────────────────────────────────────────────────────
// types.hpp
// Data structures for CS2 Game State Integration payloads
//
// CONCEPT: Use std::optional for fields that may or may not be present.
// CS2 sends partial updates - missing fields should NOT reset existing values.
// ─────────────────────────────────────────────────────────────────────────────

#include <string>
#include <optional>
#include <cstdint>

namespace http_server {
    namespace gsi {
        // ─────────────────────────────────────────────────────────────────────────────
        // PlayerState: Health, armor, money - fields from "player.state"
        // ─────────────────────────────────────────────────────────────────────────────
        struct PlayerState {
            std::optional<int> health;
            std::optional<int> armor;
            std::optional<int> money;
        };

        // ─────────────────────────────────────────────────────────────────────────────
        // PlayerStats: Match statistics - fields from "player.match_stats"
        // ─────────────────────────────────────────────────────────────────────────────
        struct PlayerStats {
            std::optional<int> kills;
            std::optional<int> assists;
            std::optional<int> deaths;
        };

        // ─────────────────────────────────────────────────────────────────────────────
        // PlayerUpdate: Combined player information from a GSI update
        // ─────────────────────────────────────────────────────────────────────────────
        struct PlayerUpdate {
            std::optional<std::string> steamid;
            std::optional<std::string> team;
            PlayerState state;
            PlayerStats stats;

            bool has_data() const {
                return steamid.has_value() ||
                          team.has_value() ||
                          state.health.has_value() ||
                          state.armor.has_value() ||
                          state.money.has_value() ||
                          stats.kills.has_value() ||
                          stats.assists.has_value() ||
                          stats.deaths.has_value();
            }
        };

        struct TeamScore {
            std::optional<int> score;

            bool has_value() const {
                return score.has_value();
            }
        };
        // ─────────────────────────────────────────────────────────────────────────────
        // MapUpdate: Map/round information from a GSI update
        // ─────────────────────────────────────────────────────────────────────────────
        struct MapUpdate {
            std::optional<std::string> name;
            std::optional<int> round;
            std::optional<std::string> phase;
            TeamScore team_ct;
            TeamScore team_t;

            bool has_data() const {
                return name.has_value() ||
                       round.has_value() ||
                       phase.has_value() ||
                       team_ct.has_value() ||
                       team_t.has_value();
            }
        };

        // ─────────────────────────────────────────────────────────────────────────────
        // GsiUpdate: The complete parsed GSI payload (MVP fields only)
        //
        // This is what we get after parsing an incoming JSON payload.
        // All fields are optional because CS2 sends partial updates.
        // ─────────────────────────────────────────────────────────────────────────────
        struct GsiUpdate {
            std::optional<std::uint64_t> timestamp;
            MapUpdate map;
            PlayerUpdate player;

            bool has_data() const {
                return timestamp.has_value() ||
                       map.has_data() ||
                       player.has_data();
            }
        };
    }
}