#pragma once

// ─────────────────────────────────────────────────────────────────────────────
// session.hpp
// Handles a single HTTP connection: read request, route, write response.
// ─────────────────────────────────────────────────────────────────────────────

#include <boost/asio.hpp>
#include <boost/beast.hpp>

namespace http_server {
// ─────────────────────────────────────────────────────────────────────────────
// CONCEPT: A "session" represents one client's connection lifecycle.
//
// For each connection:
//   1. Read the HTTP request from the socket
//   2. Decide what response to send (routing)
//   3. Write the HTTP response back
//   4. Optionally keep-alive or close
// ─────────────────────────────────────────────────────────────────────────────

class Session {
public:
    // Take ownership of the socket (moved in)
    explicit Session(boost::asio::ip::tcp::socket socket);

    // Run the session synchronously (blocking)
    // In production you'd make this async, but sync is easier to learn first.
    void run();

private:
    boost::asio::ip::tcp::socket socket_;
    boost::beast::flat_buffer buffer_;  // Stores incoming data; grows as needed

    // Read one HTTP request from the socket
    boost::beast::http::request<boost::beast::http::string_body> read_request();

    // Build a response based on the request (this is our "router" for now)
    boost::beast::http::response<boost::beast::http::string_body> handle_request(
        const boost::beast::http::request<boost::beast::http::string_body>& req);
    // Write the response back to the socket
    void write_response(boost::beast::http::response<boost::beast::http::string_body>& res);
};

}  // namespace http_server
