"use strict";

const restify = require("restify");

const server = restify.createServer();

server.get("/", (req, res, next) => {
  res.setHeader("Connection", "close");
  res.send("Hello World!");
  return next();
});

server.get("/keep-alive", (req, res, next) => {
  res.send("Hello World!");
  return next();
});

server.listen(Number(process.env.PORT), () => {
  console.log("%s listening at %s", server.name, server.url);
});
