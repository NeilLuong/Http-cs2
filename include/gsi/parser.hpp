#pragma once

// ─────────────────────────────────────────────────────────────────────────────
// parser.hpp
// Parses CS2 GSI JSON payloads into typed structs
// ─────────────────────────────────────────────────────────────────────────────

#include "types.hpp"
#include <string>

namespace http_server {
    namespace gsi {
        // ─────────────────────────────────────────────────────────────────────────────
        // parse_gsi_update: Parse a JSON string into a GsiUpdate struct
        //
        // CONCEPT: Defensive parsing
        //   - Never throws on missing fields (they're optional)
        //   - Returns empty GsiUpdate on completely invalid JSON
        //   - Logs warnings for unexpected data types but continues
        //
        // Returns: GsiUpdate with optional fields populated where data exists
        // ─────────────────────────────────────────────────────────────────────────────
        GsiUpdate parse_gsi_update(const std::string& json_str);
    }
}