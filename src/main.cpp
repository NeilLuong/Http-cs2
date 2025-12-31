// ─────────────────────────────────────────────────────────────────────────────
// main.cpp
// Entry point for the CS2 GSI Analytics Server
// ─────────────────────────────────────────────────────────────────────────────

#include "http/server.hpp"
#include <iostream>
#include <cstdlib>

int main(int argc, char* argv[]) {
    try {
        // Default configuration (can be overridden via command line later)
        const std::string address = "0.0.0.0";  // Listen on all interfaces
        const std::uint16_t port = 8080;        // Default port

        std::cout << "═══════════════════════════════════════════════════════\n";
        std::cout << "  CS2 GSI Analytics Server\n";
        std::cout << "═══════════════════════════════════════════════════════\n";

        // Create and run the server
        http_server::Server server(address, port);
        server.run();

    } catch (const std::exception& e) {
        std::cerr << "Fatal error: " << e.what() << "\n";
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}