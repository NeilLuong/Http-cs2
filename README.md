Day1:

boost/1.86.0: provides Boost.Asio (async networking) + Boost.Beast(HTTP on top of Asio). These will be the foundation

nlohmann_json/3.11.3: Easy modern JSON parsing/serialization for the GSI payloads and REST responses

Omitting some modules to reduce compile time, reduce binary size as most of it is not even necessary for this project

Day2:

Need to create a HTTP session handler. A "session" represents one client's connection lifecycle. 
For each connection:
1. Read the HTTP request from the socket
2. Decide what response to send (routing)
3. Write the HTTP response back
4. Keep connection alive or close it

Need to create a server that includes a listener (acceptor). The Server class owns the io_context and acceptor.
1. io_context: The "event loop" that drives all I/O operations.
2. acceptor: Listens on a specific address:port for incoming connections. When a client connects, it gives us a socket to communicate with them.

HTTP1.0 / HTTP1.1 / HTTP2.0 

HyperText Transfer Protocol
Boost.Beast only implements 1.0 and 1.1. 

An HTTP/2 request is a binary-framed stream starting with a fixed preface, not text headers, so an HTTP/1.1 Beast server cannot parse it and will reject or close the connection.





