#pragma once

#include "types.hpp"
#include <string>

// ─────────────────────────────────────────────────────────────────────────────
// CONCEPT: Response helpers enforce consistency.
// Every JSON response has the same headers, every error has the same shape.
// This prevents bugs where you forget Content-Type or format errors differently.
// ─────────────────────────────────────────────────────────────────────────────

namespace http_server {
    Response make_json_response(const Request& req,
                                const std::string& body,
                                http::status status = http::status::ok);

    Response make_error_response(const Request& req,
                                 const std::string& code,
                                 const std::string& message,
                                 http::status status);

    Response not_found(const Request& req, const std::string& message = "Resource not found");
    Response bad_request(const Request& req, const std::string& message = "Bad request");
    Response unauthorized(const Request& req, const std::string& message = "Unauthorized");
    Response method_not_allowed(const Request& req);
    Response internal_error(const Request& req, const std::string& message = "Internal server error");
};

