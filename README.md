# Simple HTTP benchmark for different nodejs frameworks using wrk

## Prerequisites

* [wrk](https://github.com/wg/wrk) - how to install [guide](https://github.com/wg/wrk/wiki/Installing-Wrk-on-Linux)

## Installation

```bash
git clone git@github.com:leizongmin/leizm-web-benchmark.git && cd leizm-web-benchmark
yarn [install]
```

## How to run or automatically it can run after `yarn install`

```bash
make
```

After finish the make tasks, look at benchmarks.txt file or your console output.

## Result of benchmarks without measuring cpu/memory usage

Simple HTTP benchmark results (wrk) with `close` connection

```text
26152.90 Requests/sec - uleizm-web.js
22450.96 Requests/sec - ukoa.js
12820.36 Requests/sec - ufeathers.js
12134.07 Requests/sec - uexpress.js
5513.99 Requests/sec - micro.js
4959.12 Requests/sec - rawnode.js
4602.40 Requests/sec - leizm-web.js
3675.19 Requests/sec - total/total.js
3625.12 Requests/sec - koa.js
3333.37 Requests/sec - express.js
3175.13 Requests/sec - feathers.js
2811.85 Requests/sec - restify.js
1638.57 Requests/sec - hapi.js
1066.74 Requests/sec - sails/sails.js
159.65 Requests/sec - uws.js
```

Simple HTTP benchmark results (wrk) with `keep-alive` connection

```text
28487.77 Requests/sec - uleizm-web.js
28061.49 Requests/sec - uws.js
24185.91 Requests/sec - ukoa.js
12684.09 Requests/sec - micro.js
12584.03 Requests/sec - uexpress.js
12561.44 Requests/sec - ufeathers.js
11023.34 Requests/sec - rawnode.js
10139.57 Requests/sec - leizm-web.js
7993.16 Requests/sec - koa.js
7133.59 Requests/sec - total/total.js
5494.80 Requests/sec - express.js
5235.98 Requests/sec - restify.js
3451.93 Requests/sec - feathers.js
2308.08 Requests/sec - hapi.js
1343.64 Requests/sec - sails/sails.js
```

### Hardware used

* Virtual CPU a7769a6388d5 2394.454 MHz x 1
* 1Gb RAM

### Version

* Node v8.9.0
* Ubuntu 16.04.4 LTS x86_64 OS
* Linux version 4.4.0-87-generic

### Notes

* Some frameworks used with [uWebSockets](https://github.com/uWebSockets/uWebSockets) server.
* This [runs](https://github.com/hbakhtiyor/node-frameworks-benchmark/blob/master/run#L9-L12) a benchmark for 5 minutes, using 12 threads, and keeping 400 HTTP connections open.
