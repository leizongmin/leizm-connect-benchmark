'use strict';

const http = require('uws').http;
const { Connect, Router } = require('@leizm/connect');

const app = new Connect();
const router = new Router();
const server = http.createServer(app.handleRequest);
app.use('/', router);

router.get('/', (ctx) => {
	ctx.response.setHeader('Connection', 'close');
  ctx.response.end('Hello World!');
});

router.get('/keep-alive', (ctx) => {
  ctx.response.end('Hello World!');
});

server.listen(8000, () => {
  console.log('@leizm/connect demo app listening on port 8000!');
});
