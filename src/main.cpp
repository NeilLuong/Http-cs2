// ─────────────────────────────────────────────────────────────────────────────
// main.cpp
// Entry point for the CS2 GSI Analytics Server
// ─────────────────────────────────────────────────────────────────────────────

#include "http/server.hpp"
#include "http/router.hpp"
#include "http/response.hpp"
#include <iostream>
#include <cstdlib>

http_server::Response health_handler(const http_server::Request& req) {
    const std::string body = R"({"status":"ok"})";
    return http_server::make_json_response(req, body, http_server::http::status::ok);
}

int main(int argc, char* argv[]) {
    try {
        // Default configuration (can be overridden via command line later)
        const std::string address = "0.0.0.0";  // Listen on all interfaces
        const std::uint16_t port = 8080;        // Default port

        std::cout << "═══════════════════════════════════════════════════════\n";
        std::cout << "  CS2 GSI Analytics Server\n";
        std::cout << "═══════════════════════════════════════════════════════\n";

        //Create router and register routes
        http_server::Router router;
        router.get("/health", health_handler);

        // Create and run the server
        http_server::Server server(address, port, router);
        server.run();

    } catch (const std::exception& e) {
        std::cerr << "Fatal error: " << e.what() << "\n";
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}