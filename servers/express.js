"use strict";

const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.set("Connection", "close");
  res.send("Hello World!");
});

app.get("/keep-alive", (req, res) => {
  res.send("Hello World!");
});

app.listen(Number(process.env.PORT), () => {
  console.log("Express demo app listening on port %d!", Number(process.env.PORT));
});
