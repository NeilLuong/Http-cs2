#pragma once

// ─────────────────────────────────────────────────────────────────────────────
// types.hpp
// Common type aliases for HTTP handling to reduce verbosity throughout codebase
// ─────────────────────────────────────────────────────────────────────────────

#include <boost/beast.hpp>
#include <boost/asio.hpp>
#include <functional>

namespace http_server {
    namespace beast = boost::beast;
    namespace http  = beast::http;
    namespace net   = boost::asio;
    using tcp       = net::ip::tcp;

    using Request = http::request<http::string_body>;

    // The HTTP response type we use
    using Response = http::response<http::string_body>;

    // A handler is a function that takes a request and returns a response
    // This is the signature every route handler must match
    using Handler = std::function<Response(const Request&)>;
}

