#include "http/router.hpp"
#include <iostream>

namespace http_server {
    std::string Router::make_key(http::verb method, const std::string& path) {
    return std::string(http::to_string(method)) + " " + path;
}

    void Router::add(http::verb method, const std::string& path, Handler handler) {
    std::string key = make_key(method, path);
    routes_[key] = std::move(handler);
    known_paths_[path] = true;  // Mark this path as known

    std::cout << "Route registered: " << key << "\n";
    
}

    void Router::get(const std::string& path, Handler handler) {
        add(http::verb::get, path, std::move(handler));
}

    void Router::post(const std::string& path, Handler handler) {
        add(http::verb::post, path, std::move(handler));
}

// ─────────────────────────────────────────────────────────────────────────────
// CONCEPT: Distinguish between 404 (path doesn't exist) and 
//          405 (path exists but method not allowed)
// ─────────────────────────────────────────────────────────────────────────────

Response Router::route(const Request& req) const {
    //e.g., /index.html?id=123
    std::string target(req.target());

    // Strip query parameters
    std::string path = target.substr(0, target.find('?')); 

    // Log the incoming request
    std::cout << req.method_string() << " " << path << "\n";

    std::string key = make_key(req.method(), path);
    auto it = routes_.find(key);
    
    if (it != routes_.end()) {
        // Found a Handler matching
        try {
            return it->second(req); // Call the handler
        } catch (const std::exception& e) {
            std::cerr << "Handler error: " << e.what() << "\n";
            return internal_error(req, "Handler threw an exception");
        }
    }

    // No handler found - is it 404 or 405?
    if (known_paths_.count(path) > 0) {
        // Path exists but method not allowed
        return method_not_allowed(req);
    }

    // Path doesn't exist at all
    return not_found(req);
}
}