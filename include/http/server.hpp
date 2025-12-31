#pragma once

// ─────────────────────────────────────────────────────────────────────────────
// server.hpp
// The main HTTP server: listens for connections and dispatches sessions.
// ─────────────────────────────────────────────────────────────────────────────

#include <boost/asio.hpp>
#include "http/router.hpp"
#include <cstdint>
#include <string>

namespace http_server {

// ─────────────────────────────────────────────────────────────────────────────
// CONCEPT: The Server class owns the io_context and acceptor.
//
// - io_context: The "event loop" that drives all I/O operations.
//   Think of it as the engine that processes network events.
//
// - acceptor: Listens on a specific address:port for incoming connections.
//   When a client connects, it gives us a socket to communicate with them.
// ─────────────────────────────────────────────────────────────────────────────

class Server {
public:
    // Construct with address (e.g., "0.0.0.0") and port (e.g., 8080)
    Server(const std::string& address, std::uint16_t port, const Router& router);

    // Start accepting connections (blocking - runs the io_context)
    void run();

private:
    const Router& router_;
    net::io_context ioc_;       // The I/O event loop
    tcp::acceptor acceptor_;    // Listens for incoming connections

    // Accept one connection, handle it, repeat
    void accept_loop();
};

}  // namespace http_server
