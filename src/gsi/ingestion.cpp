#include "gsi/ingestion.hpp"
#include "http/response.hpp"
#include "http/config.hpp"
#include <nlohmann/json.hpp>
#include <iostream>

namespace http_server {
    namespace gsi {
        // ─────────────────────────────────────────────────────────────────────────────
        // validate_body_size: Check if request body is within limits
        //
        // Fail fast. Check size before parsing to prevent memory issues.
        // ─────────────────────────────────────────────────────────────────────────────
        bool validate_body_size(const Request& req) {
            return req.body().size() <= config::MAX_REQUEST_BODY_SIZE;
        }

        // ─────────────────────────────────────────────────────────────────────────────
        // extract_token: Get auth token from header or JSON body
        //
        // CS2 GSI can send token through JSON body: { "auth": { "token": "..." } }
        // If not found there, return empty string.
        // ─────────────────────────────────────────────────────────────────────────────
        std::string extract_token(const Request& req) {
            try
            {
                nlohmann::json data = nlohmann::json::parse(req.body());
                if (data.contains("auth") && data["auth"].contains("token")) {
                    return data["auth"]["token"].get<std::string>();
                }
            }
            catch(const nlohmann::json::exception& e)
            {
                std::cerr << "GSI failed to parse JSON for token extraction: " << e.what() << '\n';
            }
            return "";
        }

        // ─────────────────────────────────────────────────────────────────────────────
        // validate_token: Check if token matches expected value
        // ─────────────────────────────────────────────────────────────────────────────
        bool validate_token(const std::string& token) {
            if (token.empty()) {
                return false;
            }
            return token == config::GSI_AUTH_TOKEN;
        }

        Response handle_gsi_ingest(const Request& req) {
            if (!validate_body_size(req)) {
                return http_server::make_error_response(req, "payload_too_large",
                                                       "Request body exceeds maximum allowed size",
                                                       http::status::payload_too_large);
            }

            std::string token = extract_token(req);
            if (!validate_token(token)) {
                return http_server::unauthorized(req, "Invalid or missing authentication token");
            }

            try
            {
                [[maybe_unused]] nlohmann::json data = nlohmann::json::parse(req.body());
            }
            catch(const nlohmann::json::exception& e)
            {
                std::cerr << "GSI rejected due to invalid JSON: " << e.what() << '\n';
                return http_server::bad_request(req, "Invalid JSON in request body");
            }

            std::cout << "GSI accepted update (" << req.body().size() << " bytes)\n";
            return http_server::make_json_response(req, R"({"status":"accepted"})",
                                                  http::status::accepted);
        }
    }
}