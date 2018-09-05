"use strict";

const http = require("http");

const server = http.createServer((req, res) => {
  if (req.url !== "/keep-alive") {
    res.setHeader("Connection", "close");
  }
  res.end("Hello World!");
});

server.listen(Number(process.env.PORT));
