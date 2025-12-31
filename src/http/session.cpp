// ─────────────────────────────────────────────────────────────────────────────
// session.cpp
// Implementation of the HTTP session handler.
// ─────────────────────────────────────────────────────────────────────────────

#include "http/session.hpp"
#include <iostream>

namespace http_server {

// ─────────────────────────────────────────────────────────────────────────────
// Constructor: take ownership of the socket via move
// ─────────────────────────────────────────────────────────────────────────────
Session::Session(boost::asio::ip::tcp::socket socket)
    : socket_(std::move(socket)) {}

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
        auto res = handle_request(req);

        // Step 3: Send the response back to the client
        write_response(res);

        // Step 4: Graceful shutdown (we close after one request for now)
        boost::beast::error_code ec;
        socket_.shutdown(boost::asio::ip::tcp::socket::shutdown_send, ec);
        // Ignore shutdown errors (client may have already closed)

    } catch (const boost::beast::system_error& se) {
        // Connection errors are normal (client disconnect, timeout, etc.)
        if (se.code() != boost::beast::errc::not_connected) {
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
boost::beast::http::request<boost::beast::http::string_body> Session::read_request() {
    boost::beast::http::request<boost::beast::http::string_body> req;
    boost::beast::http::read(socket_, buffer_, req);
    return req;
}

// ─────────────────────────────────────────────────────────────────────────────
// handle_request(): Minimal routing for Day 2
//
// For now, we only handle:
//   GET /health → 200 OK
//   Everything else → 404 Not Found
// ─────────────────────────────────────────────────────────────────────────────
boost::beast::http::response<boost::beast::http::string_body> Session::handle_request(
    const boost::beast::http::request<boost::beast::http::string_body>& req) {
    
    // Log the request (helpful for debugging)
    std::cout << req.method_string() << " " << req.target() << "\n";

    // Route: GET /health
    if (req.method() == boost::beast::http::verb::get && req.target() == "/health") {
        boost::beast::http::response<boost::beast::http::string_body> res{boost::beast::http::status::ok, req.version()};
        res.set(boost::beast::http::field::server, "HttpPlusCS2");
        res.set(boost::beast::http::field::content_type, "application/json");
        res.body() = R"({"status":"ok"})";
        res.prepare_payload();  // Sets Content-Length automatically
        return res;
    }

    // Fallback: 404 Not Found
    boost::beast::http::response<boost::beast::http::string_body> res{boost::beast::http::status::not_found, req.version()};
    res.set(boost::beast::http::field::server, "HttpPlusCS2");
    res.set(boost::beast::http::field::content_type, "application/json");
    res.body() = R"({"code":"not_found","message":"Resource not found"})";
    res.prepare_payload();
    return res;
}

// ─────────────────────────────────────────────────────────────────────────────
// write_response(): Send the HTTP response to the client
//
// CONCEPT: beast::http::write() serializes the response and sends it.
// ─────────────────────────────────────────────────────────────────────────────
void Session::write_response(boost::beast::http::response<boost::beast::http::string_body>& res) {
    boost::beast::http::write(socket_, res);
}

}  // namespace http_server
