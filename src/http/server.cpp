// ─────────────────────────────────────────────────────────────────────────────
// server.cpp
// Implementation of the HTTP server.
// ─────────────────────────────────────────────────────────────────────────────

#include "http/server.hpp"
#include "http/session.hpp"
#include <iostream>

namespace http_server {

// ─────────────────────────────────────────────────────────────────────────────
// Constructor: Set up the acceptor to listen on the given address:port
//
// CONCEPT: The acceptor needs an "endpoint" (IP + port) to bind to.
// - "0.0.0.0" means "listen on all network interfaces"
// - "127.0.0.1" means "localhost only"
// ─────────────────────────────────────────────────────────────────────────────
Server::Server(const std::string& address, std::uint16_t port)
    : ioc_(1)  // 1 thread for now (single-threaded server)
    , acceptor_(ioc_) {
    
    // Parse the address string into an Asio endpoint
    boost::asio::ip::tcp::endpoint endpoint(boost::asio::ip::make_address(address), port);

    // Open the acceptor with the endpoint's protocol (IPv4 or IPv6)
    acceptor_.open(endpoint.protocol());

    // Allow address reuse (so we can restart quickly without "address in use" errors)
    acceptor_.set_option(boost::asio::socket_base::reuse_address(true));

    // Bind to the endpoint
    acceptor_.bind(endpoint);

    // Start listening (backlog = max pending connections)
    acceptor_.listen(boost::asio::socket_base::max_listen_connections);

    std::cout << "Server listening on " << address << ":" << port << "\n";
}

// ─────────────────────────────────────────────────────────────────────────────
// run(): Start accepting connections
//
// CONCEPT: This is the main "event loop" for a synchronous server.
// We loop forever, accepting connections one at a time.
// ─────────────────────────────────────────────────────────────────────────────
void Server::run() {
    std::cout << "Server running. Press Ctrl+C to stop.\n";
    accept_loop();
}

// ─────────────────────────────────────────────────────────────────────────────
// accept_loop(): Accept connections in a loop
//
// CONCEPT: acceptor_.accept() blocks until a client connects.
// When it returns, we have a socket connected to that client.
// We create a Session to handle the request, then loop back to accept more.
//
// NOTE: This is single-threaded and handles one request at a time.
// For concurrency, you'd:
//   1. Use async_accept() with callbacks/coroutines, OR
//   2. Spawn threads per connection (simple but doesn't scale well), OR
//   3. Use a thread pool with async I/O (best for production)
// ─────────────────────────────────────────────────────────────────────────────
void Server::accept_loop() {
    while (true) {
        // Block until a client connects; returns a connected socket
        boost::asio::ip::tcp::socket socket(ioc_);
        acceptor_.accept(socket);

        // Log the connection
        std::cout << "Accepted connection from "
                  << socket.remote_endpoint().address().to_string() << "\n";

        // Handle this connection (blocks until request/response complete)
        Session session(std::move(socket));
        session.run();

        // Loop back to accept the next connection
    }
}

}  // namespace http_server
