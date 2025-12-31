#include "http/response.hpp"

namespace http_server {
    Response make_json_response(const Request& req,
                                const std::string& body,
                                http::status status) {
        Response res{status, req.version()};
        res.set(http::field::server, "HttpPlusCS2");
        res.set(http::field::content_type, "application/json");
        res.body() = body;
        res.prepare_payload();
        return res;
    }

    Response make_error_response(const Request& req,
                                 const std::string& code,
                                 const std::string& message,
                                 http::status status) {
        std::string body = R"({"code":")" + code + R"(","message":")" + message + R"("})";
        return make_json_response(req, body, status);
    }

    Response not_found(const Request& req, const std::string& message) {
        return make_error_response(req, "not_found", message, http::status::not_found);
    }

    Response bad_request(const Request& req, const std::string& message) {
        return make_error_response(req, "bad_request", message, http::status::bad_request);
    }

    Response unauthorized(const Request& req, const std::string& message) {
        return make_error_response(req, "unauthorized", message, http::status::unauthorized);
    }

    Response method_not_allowed(const Request& req) {
        return make_error_response(req, "method_not_allowed", "HTTP method not allowed", http::status::method_not_allowed);
    }

    Response internal_error(const Request& req, const std::string& message) {
        return make_error_response(req, "internal_error", message, http::status::internal_server_error);
    }
}