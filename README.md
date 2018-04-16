# Simple HTTP benchmark for different nodejs frameworks using wrk

## Prerequisites

* [wrk](https://github.com/wg/wrk) - how to install [guide](https://github.com/wg/wrk/wiki/Installing-Wrk-on-Linux)

## Installation

```bash
git clone git@github.com:leizongmin/leizm-web-benchmark.git && cd leizm-web-benchmark
npm i
```

## How to run or automatically it can run after `yarn install`

```bash
make
```

After finish the make tasks, look at benchmarks.txt file or your console output.

## Result of benchmarks without measuring cpu/memory usage

Simple HTTP benchmark results (wrk) with `close` connection

```text
8390.82 Requests/sec - restify.js
6983.61 Requests/sec - micro.js
6905.93 Requests/sec - leizm-web.js
6578.84 Requests/sec - http.js
6415.45 Requests/sec - rawnode.js
5414.55 Requests/sec - koa.js
5263.68 Requests/sec - total/total.js
4926.65 Requests/sec - feathers.js
4829.53 Requests/sec - express.js
4401.81 Requests/sec - hapi.js
1640.84 Requests/sec - sails/sails.js
```

Simple HTTP benchmark results (wrk) with `keep-alive` connection

```text
12279.14 Requests/sec - restify.js
11630.27 Requests/sec - micro.js
11584.45 Requests/sec - leizm-web.js
11298.82 Requests/sec - http.js
10730.96 Requests/sec - rawnode.js
9415.69 Requests/sec - koa.js
9178.14 Requests/sec - total/total.js
7024.93 Requests/sec - express.js
6038.25 Requests/sec - hapi.js
4772.14 Requests/sec - feathers.js
1640.60 Requests/sec - sails/sails.js
```

### Hardware used

* Intel(R) Xeon(R) CPU E5-2682 v4 @ 2.50GHz x 4
* 8 Gb RAM

### Version

* Node v8.9.0
* Ubuntu 16.04.4 LTS x86_64 OS
* Linux version 4.4.0-87-generic

### Notes

* Some frameworks used with [uWebSockets](https://github.com/uWebSockets/uWebSockets) server.
* This [runs](https://github.com/hbakhtiyor/node-frameworks-benchmark/blob/master/run#L9-L12) a benchmark for 5 minutes, using 12 threads, and keeping 400 HTTP connections open.
