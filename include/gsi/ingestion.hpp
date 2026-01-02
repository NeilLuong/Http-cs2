#pragma once

// ─────────────────────────────────────────────────────────────────────────────
// ingestion.hpp
// Handles POST /v1/gsi - receives CS2 Game State Integration updates
// ─────────────────────────────────────────────────────────────────────────────

#include "http/types.hpp"
#include <string>

namespace http_server {
    namespace gsi {
        // ─────────────────────────────────────────────────────────────────────────────
        // CONCEPT: Separate concerns into small, testable functions.
        //
        // The handler orchestrates:
        //   1. Check auth (fail fast with 401)
        //   2. Validate body size (fail with 413)
        //   3. Parse JSON (fail with 400)
        //   4. Return 202 Accepted
        //
        // Each step is a separate function so you can unit test them individually.
        // ─────────────────────────────────────────────────────────────────────────────

        // Main handler for POST /v1/gsi
        Response handle_gsi_ingest(const Request& req);

        // ─────────────────────────────────────────────────────────────────────────────
        // Validation helpers
        // ─────────────────────────────────────────────────────────────────────────────

        // Extract token from header or JSON body, returns empty string if not found
        std::string extract_token(const Request& req);

        // Check if the provided token matches the expected token
        bool validate_token(const std::string& token);

        // Check if body size is within limits
        bool validate_body_size(const Request& req);
    }
}


