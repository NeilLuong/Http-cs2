#pragma once

// ─────────────────────────────────────────────────────────────────────────────
// config.hpp
// Server configuration constants
// For MVP, these are compile-time constants. Later, load from env/file.
// ─────────────────────────────────────────────────────────────────────────────

#include <string>
#include <cstdint>

namespace http_server {
    namespace config {
        // ─────────────────────────────────────────────────────────────────────────────
        // CONCEPT: Centralize configuration so it's easy to find and change.
        // In production, these would come from environment variables or a config file.
        // ─────────────────────────────────────────────────────────────────────────────

        // Authentication token for GSI ingestion
        inline const std::string GSI_AUTH_TOKEN = "my_super_secret_token";  // Replace with secure token

        // Maximum allowed request body size of 256KB
        // payloads are typically small 2-10KB JSON so this is generous
        inline constexpr std::size_t MAX_REQUEST_BODY_SIZE = 256 * 1024;

        // Server defaults 
        inline constexpr std::uint16_t DEFAULT_PORT = 8080;
        inline const std::string DEFAULT_ADDRESS = "0.0.0.0";
    }
}