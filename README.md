# Simple HTTP benchmark for different nodejs frameworks using wrk

## Prerequisites

* [wrk](https://github.com/wg/wrk) - how to install [guide](https://github.com/wg/wrk/wiki/Installing-Wrk-on-Linux)

## Installation

```bash
git clone git@github.com:leizongmin/leizm-connect-benchmark.git && cd leizm-connect-benchmark
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
26882.24 Requests/sec - ukoa.js
14892.25 Requests/sec - ufeathers.js
13657.59 Requests/sec - uexpress.js
5853.36 Requests/sec - micro.js
5040.39 Requests/sec - leizm-connect.js
5002.74 Requests/sec - rawnode.js
4279.85 Requests/sec - koa.js
3784.59 Requests/sec - total/total.js
3509.53 Requests/sec - express.js
3469.05 Requests/sec - feathers.js
3025.51 Requests/sec - restify.js
1261.24 Requests/sec - hapi.js
1097.77 Requests/sec - sails/sails.js
156.60 Requests/sec - uws.js
```

Simple HTTP benchmark results (wrk) with `keep-alive` connection

```text
31348.44 Requests/sec - uws.js
27884.30 Requests/sec - ukoa.js
14129.84 Requests/sec - uexpress.js
14047.04 Requests/sec - ufeathers.js
13352.23 Requests/sec - micro.js
11644.37 Requests/sec - rawnode.js
11088.41 Requests/sec - leizm-connect.js
8334.33 Requests/sec - koa.js
7588.25 Requests/sec - total/total.js
6026.16 Requests/sec - express.js
5370.37 Requests/sec - restify.js
3443.71 Requests/sec - feathers.js
1617.57 Requests/sec - hapi.js
1508.43 Requests/sec - sails/sails.js
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
