"use strict";

const { Application } = require("@leizm/web");

const app = new Application();

app.router.get("/", ctx => {
  ctx.response.setHeader("Connection", "close");
  ctx.response.end("Hello World!");
});

app.router.get("/keep-alive", ctx => {
  ctx.response.end("Hello World!");
});

app.listen(Number(process.env.PORT), () => {
  console.log("@leizm/web demo app listening on port %d!", Number(process.env.PORT));
});
