"use strict";

const { Connect, Router } = require("@leizm/web");

const app = new Connect();
const router = new Router();
app.use("/", router);

router.get("/", ctx => {
  ctx.response.setHeader("Connection", "close");
  ctx.response.end("Hello World!");
});

router.get("/keep-alive", ctx => {
  ctx.response.end("Hello World!");
});

app.listen(8000, () => {
  console.log("@leizm/web demo app listening on port 8000!");
});
