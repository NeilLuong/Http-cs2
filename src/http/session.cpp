// ─────────────────────────────────────────────────────────────────────────────
// session.cpp
// Implementation of the HTTP session handler.
// ─────────────────────────────────────────────────────────────────────────────

#include "http/session.hpp"
#include "http/router.hpp"
#include <iostream>

namespace http_server {

// ─────────────────────────────────────────────────────────────────────────────
// Constructor: take ownership of the socket via move
// ─────────────────────────────────────────────────────────────────────────────
Session::Session(tcp::socket socket, const Router& router)
    : socket_(std::move(socket)), router_(router) {}

// ─────────────────────────────────────────────────────────────────────────────
// run(): The main session loop
//
// CONCEPT: Synchronous I/O blocks until the operation completes.
// - Simple to understand and debug
// - Fine for learning or low-traffic servers
// - For high concurrency, you'd use async_read/async_write instead
// ─────────────────────────────────────────────────────────────────────────────
void Session::run() {
    try {
        // Step 1: Read the incoming HTTP request
        auto req = read_request();

        // Step 2: Route the request and build a response
        auto res = router_.route(req);

        // Step 3: Send the response back to the client
        write_response(res);

        // Step 4: Graceful shutdown (we close after one request for now)
        boost::beast::error_code ec;
        socket_.shutdown(tcp::socket::shutdown_send, ec);
        // Ignore shutdown errors (client may have already closed)

    } catch (const beast::system_error& se) {
        // Connection errors are normal (client disconnect, timeout, etc.)
        if (se.code() != beast::errc::not_connected) {
            std::cerr << "Session error: " << se.code().message() << "\n";
        }
    } catch (const std::exception& e) {
        std::cerr << "Session exception: " << e.what() << "\n";
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// read_request(): Read one HTTP request from the socket
//
// CONCEPT: beast::http::read() is synchronous and fills in the request object.
// The flat_buffer stores raw bytes; Beast parses them into the request struct.
// ─────────────────────────────────────────────────────────────────────────────
http::request<http::string_body> Session::read_request() {
    http::request<http::string_body> req;
    http::read(socket_, buffer_, req);
    return req;
}

// ─────────────────────────────────────────────────────────────────────────────
// handle_request(): Minimal routing for Day 2 -> now omitted because of Router class
//
// For now, we only handle:
//   GET /health → 200 OK
//   Everything else → 404 Not Found
// ─────────────────────────────────────────────────────────────────────────────

// ─────────────────────────────────────────────────────────────────────────────
// write_response(): Send the HTTP response to the client
//
// CONCEPT: beast::http::write() serializes the response and sends it.
// ─────────────────────────────────────────────────────────────────────────────
void Session::write_response(http::response<http::string_body>& res) {
    http::write(socket_, res);
}

}  // namespace http_server
