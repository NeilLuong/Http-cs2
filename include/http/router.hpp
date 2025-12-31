#pragma once

#include "types.hpp"
#include "response.hpp"
#include <string>
#include <unordered_map>

namespace http_server {
    // ─────────────────────────────────────────────────────────────────────────────
// CONCEPT: A Router maps (method, path) pairs to handler functions.
//
// When a request comes in:
//   1. Look up the handler by method + path
//   2. If found, call the handler
//   3. If not found, return 404
//
// This separates "how to dispatch" from "what each endpoint does".
// ─────────────────────────────────────────────────────────────────────────────

class Router {
public:
    // Register a handler for a specific method and path
    // Example: router.add(http::verb::get, "/health", health_handler);
    void add(http::verb method, const std::string& path, Handler handler);
    void get(const std::string& path, Handler handler);
    void post(const std::string& path, Handler handler);

    // Route a request to the appropriate handler
    // Returns the response from the handler, or 404/405 if no match
    Response route(const Request& req) const;

private:
    // Key for the route map: "GET /health", "POST /v1/gsi", etc.
    static std::string make_key(http::verb method, const std::string& path);

    // Map from "METHOD /path" -> handler function
    std::unordered_map<std::string, Handler> routes_;

     // Track which paths exist (for 405 vs 404 distinction)
    std::unordered_map<std::string, bool> known_paths_;
 };
}