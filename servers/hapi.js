"use strict";

const Hapi = require("@hapi/hapi");

// Create a server with a host and port
const server = new Hapi.Server({
  host: "localhost",
  port: Number(process.env.PORT)
});

// Add the route
server.route([
  {
    method: "GET",
    path: "/",
    handler: (req, h) => {
      const res = h.response("Hello World!");
      res.header("Connection", "close");
      return res;
    }
  },
  {
    method: "GET",
    path: "/keep-alive",
    handler: (req, h) => {
      return "Hello World!";
    }
  }
]);

// Start the server
server.start(err => {
  if (err) {
    throw err;
  }
  console.log("Server running at:", server.info.uri);
});
