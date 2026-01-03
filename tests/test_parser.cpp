// ─────────────────────────────────────────────────────────────────────────────
// test_parser.cpp
// Unit tests for GSI payload parser
// ─────────────────────────────────────────────────────────────────────────────

#include "gsi/parser.hpp"
#include <iostream>
#include <cassert>

#define TEST_ASSERT(cond, msg) \
    do { \
        if (!(cond)) { \
            std::cerr << "FAILED: " << msg << '\n'; \
            std::cerr << "  at " << __FILE__ << ":" << __LINE__ << '\n'; \
            return false; \
        } \
    } while(0)

// ─────────────────────────────────────────────────────────────────────────────
// Test: Full payload parsing
// ─────────────────────────────────────────────────────────────────────────────
bool test_full_payload() {
    std::cout << "Running: test_full_payload... ";
    
    const std::string json = R"({
        "provider": {
            "name": "Counter-Strike 2",
            "appid": 730,
            "timestamp": 1704067200
        },
        "map": {
            "name": "de_dust2",
            "phase": "live",
            "round": 5,
            "team_ct": { "score": 3 },
            "team_t": { "score": 2 }
        },
        "player": {
            "steamid": "76561198012345678",
            "team": "CT",
            "state": {
                "health": 100,
                "armor": 100,
                "money": 4750
            },
            "match_stats": {
                "kills": 8,
                "assists": 2,
                "deaths": 3
            }
        }
    })";
    
    http_server::gsi::GsiUpdate update = http_server::gsi::parse_gsi_update(json);
    
    // Check timestamp
    TEST_ASSERT(update.timestamp.has_value(), "timestamp should exist");
    TEST_ASSERT(update.timestamp.value() == 1704067200, "timestamp value");
    
    // Check map
    TEST_ASSERT(update.map.name.has_value(), "map.name should exist");
    TEST_ASSERT(update.map.name.value() == "de_dust2", "map.name value");
    TEST_ASSERT(update.map.phase.value() == "live", "map.phase value");
    TEST_ASSERT(update.map.round.value() == 5, "map.round value");
    TEST_ASSERT(update.map.team_ct.score.value() == 3, "team_ct score");
    TEST_ASSERT(update.map.team_t.score.value() == 2, "team_t score");
    
    // Check player
    TEST_ASSERT(update.player.steamid.value() == "76561198012345678", "steamid");
    TEST_ASSERT(update.player.team.value() == "CT", "team");
    TEST_ASSERT(update.player.state.health.value() == 100, "health");
    TEST_ASSERT(update.player.state.armor.value() == 100, "armor");
    TEST_ASSERT(update.player.state.money.value() == 4750, "money");
    TEST_ASSERT(update.player.stats.kills.value() == 8, "kills");
    TEST_ASSERT(update.player.stats.assists.value() == 2, "assists");
    TEST_ASSERT(update.player.stats.deaths.value() == 3, "deaths");
    
    std::cout << "PASSED\n";
    return true;
}

// ─────────────────────────────────────────────────────────────────────────────
// Test: Partial payload (only player health update)
// ─────────────────────────────────────────────────────────────────────────────
bool test_partial_payload() {
    std::cout << "Running: test_partial_payload... ";
    
    // CS2 often sends minimal updates like this
    const std::string json = R"({
        "player": {
            "steamid": "76561198012345678",
            "state": {
                "health": 75
            }
        }
    })";
    
    http_server::gsi::GsiUpdate update = http_server::gsi::parse_gsi_update(json);
    
    // Present fields should have values
    TEST_ASSERT(update.player.steamid.value() == "76561198012345678", "steamid");
    TEST_ASSERT(update.player.state.health.value() == 75, "health");
    
    // Missing fields should be nullopt (NOT zero!)
    TEST_ASSERT(!update.timestamp.has_value(), "timestamp should be empty");
    TEST_ASSERT(!update.map.name.has_value(), "map.name should be empty");
    TEST_ASSERT(!update.player.state.armor.has_value(), "armor should be empty");
    TEST_ASSERT(!update.player.state.money.has_value(), "money should be empty");
    TEST_ASSERT(!update.player.stats.kills.has_value(), "kills should be empty");
    
    std::cout << "PASSED\n";
    return true;
}

// ─────────────────────────────────────────────────────────────────────────────
// Test: Empty JSON object
// ─────────────────────────────────────────────────────────────────────────────
bool test_empty_payload() {
    std::cout << "Running: test_empty_payload... ";
    
    const std::string json = "{}";
    http_server::gsi::GsiUpdate update = http_server::gsi::parse_gsi_update(json);
    
    TEST_ASSERT(!update.has_data(), "empty payload should have no data");
    TEST_ASSERT(!update.map.has_data(), "map should have no data");
    TEST_ASSERT(!update.player.has_data(), "player should have no data");
    
    std::cout << "PASSED\n";
    return true;
}

// ─────────────────────────────────────────────────────────────────────────────
// Test: Invalid JSON (should not crash, return empty update)
// ─────────────────────────────────────────────────────────────────────────────
bool test_invalid_json() {
    std::cout << "Running: test_invalid_json... ";
    
    const std::string json = "not valid json at all";
    http_server::gsi::GsiUpdate update = http_server::gsi::parse_gsi_update(json);
    
    TEST_ASSERT(!update.has_data(), "invalid JSON should result in empty update");
    
    std::cout << "PASSED\n";
    return true;
}

// ─────────────────────────────────────────────────────────────────────────────
// Test: Wrong types in JSON (should handle gracefully)
// ─────────────────────────────────────────────────────────────────────────────
bool test_wrong_types() {
    std::cout << "Running: test_wrong_types... ";
    
    // health is a string instead of int
    const std::string json = R"({
        "player": {
            "steamid": "76561198012345678",
            "state": {
                "health": "full"
            }
        }
    })";
    
    http_server::gsi::GsiUpdate update = http_server::gsi::parse_gsi_update(json);
    
    // steamid should parse correctly
    TEST_ASSERT(update.player.steamid.value() == "76561198012345678", "steamid");
    
    // health should be nullopt (failed to parse as int)
    TEST_ASSERT(!update.player.state.health.has_value(), "health should be empty on type mismatch");
    
    std::cout << "PASSED\n";
    return true;
}

// ─────────────────────────────────────────────────────────────────────────────
// Main: Run all tests
// ─────────────────────────────────────────────────────────────────────────────
int main() {
    std::cout << "═══════════════════════════════════════════════════════\n";
    std::cout << "  GSI Parser Unit Tests\n";
    std::cout << "═══════════════════════════════════════════════════════\n\n";
    
    int passed = 0;
    int failed = 0;
    
    if (test_full_payload()) ++passed; else ++failed;
    if (test_partial_payload()) ++passed; else ++failed;
    if (test_empty_payload()) ++passed; else ++failed;
    if (test_invalid_json()) ++passed; else ++failed;
    if (test_wrong_types()) ++passed; else ++failed;
    
    std::cout << "\n═══════════════════════════════════════════════════════\n";
    std::cout << "  Results: " << passed << " passed, " << failed << " failed\n";
    std::cout << "═══════════════════════════════════════════════════════\n";
    
    return failed > 0 ? 1 : 0;
}