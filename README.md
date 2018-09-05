# Simple HTTP benchmark for different nodejs frameworks using wrk

## Prerequisites

* [wrk](https://github.com/wg/wrk) - how to install [guide](https://github.com/wg/wrk/wiki/Installing-Wrk-on-Linux)

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
8743.19 Requests/sec - micro.js
8465.83 Requests/sec - restify.js
7996.10 Requests/sec - http.js
7495.24 Requests/sec - koa.js
7196.94 Requests/sec - leizm-web.js
5107.74 Requests/sec - express.js
4770.93 Requests/sec - hapi.js
```

Simple HTTP benchmark results (wrk) with `keep-alive` connection

```text
15464.42 Requests/sec - restify.js
13744.85 Requests/sec - micro.js
13297.22 Requests/sec - http.js
11295.15 Requests/sec - koa.js
11192.17 Requests/sec - leizm-web.js
7116.18 Requests/sec - hapi.js
6978.99 Requests/sec - express.js
```

### Hardware used

* Intel(R) Xeon(R) CPU E5-2682 v4 @ 2.50GHz x 4
* 8 Gb RAM

### Version

* Node v8.11.3
* Ubuntu 16.04.5 LTS x86_64 OS
* Linux version 4.4.0-134-generic
