# Simple HTTP benchmark for different nodejs frameworks using wrk

## Prerequisites

- [wrk](https://github.com/wg/wrk) - how to install [guide](https://github.com/wg/wrk/wiki/Installing-Wrk-on-Linux)

## Installation

```bash
git clone git@github.com:leizongmin/leizm-web-benchmark.git && cd leizm-web-benchmark
npm i
```

## Run

```bash
./start
```

After finish the benchmark tasks, look at benchmarks.txt file or your console output.

## Result of benchmarks without measuring cpu/memory usage

This runs a benchmark for 5 minutes, 200 connections.

Time:

Simple HTTP benchmark results (wrk) with `close` connection

```text
8370 Requests/sec - micro.js
8185 Requests/sec - http.js
7612 Requests/sec - koa.js
7302 Requests/sec - leizm-web.js
5871 Requests/sec - restify.js
5800 Requests/sec - hapi.js
3602 Requests/sec - express.js
```

Simple HTTP benchmark results (wrk) with `keep-alive` connection

```text
22780 Requests/sec - http.js
18899 Requests/sec - micro.js
17704 Requests/sec - koa.js
16793 Requests/sec - leizm-web.js
11603 Requests/sec - restify.js
11428 Requests/sec - hapi.js
5012 Requests/sec - express.js
```

### Hardware used

- Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz x 8
- 8G RAM

### Version

- Node v14.15.4
- Ubuntu 20.04.1 LTS (GNU/Linux 5.4.0-48-generic x86_64)
