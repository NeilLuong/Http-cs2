Libraries:
boost/1.86.0: provides Boost.Asio (async networking) + Boost.Beast(HTTP on top of Asio). These will be the foundation

nlohmann_json/3.11.3: Easy modern JSON parsing/serialization for the GSI payloads and REST responses

Omitting some modules to reduce compile time, reduce binary size as most of it is not even necessary for this project

Skeleton:
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

inline allows you to define constants in headers without linker errors (multiple definitions). It also eliminates the "jump" overhead for speed. 

GSI:
Example payload:
{
  "provider": {
    "name": "Counter-Strike 2",
    "appid": 730,
    "version": 14000,
    "timestamp": 1735848154
  },
  "auth": {
    "token": "MY_SECRET_TOKEN"
  },
  "player": {
    "steamid": "76561198000000000",
    "name": "PlayerName",
    "observer_slot": 1,
    "team": "CT",
    "activity": "playing",
    "state": {
      "health": 85,
      "armor": 100,
      "helmet": true,
      "flashed": 0,
      "smoked": 0,
      "burning": 0,
      "money": 3250,
      "round_kills": 1,
      "round_killhs": 1,
      "equip_value": 5400
    },
    "weapons": {
      "weapon_0": {
        "name": "weapon_knife",
        "paintkit": "default",
        "type": "Knife",
        "state": "holstered"
      },
      "weapon_1": {
        "name": "weapon_m4a1_silencer",
        "paintkit": "cu_m4a1_howl",
        "type": "Rifle",
        "state": "active",
        "ammo_clip": 20,
        "ammo_clip_max": 20,
        "ammo_reserve": 80
      }
    }
  },
  "map": {
    "mode": "competitive",
    "name": "de_dust2",
    "phase": "live",
    "round": 5,
    "team_ct": { "score": 3 },
    "team_t": { "score": 1 }
  }
}

Attention:
CS2 uses a Delta/Difference system to save bandwidth.

Initial Payload: When you first join a game, CS2 sends a massive "Full Sync" payload containing everything (Map, Player, All Weapons, Scores).

Partial Payloads: Every few milliseconds after that, it only sends what actually changed. If you are just running around, it might only send player.position. If you get shot, it sends player.state.





