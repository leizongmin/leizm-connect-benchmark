#!/usr/bin/env bash

export PORT=$(( ( RANDOM % 10000 )  + 10000 ))
echo "random port is $PORT"
rm results.txt

./run-dev.sh http.js
./run-dev.sh leizm-web.js
./run-dev.sh leizm-web-dev.js
echo | tee -a benchmarks.txt
echo 'Simple HTTP benchmark results (wrk) with close connection' | tee -a benchmarks.txt
sort -nr results.txt | tee -a benchmarks.txt
rm results.txt

./run-dev.sh http.js keep-alive
./run-dev.sh leizm-web.js keep-alive
./run-dev.sh leizm-web-dev.js keep-alive
echo | tee -a benchmarks.txt
echo 'Simple HTTP benchmark results (wrk) with keep-alive connection' | tee -a benchmarks.txt
sort -nr results.txt | tee -a benchmarks.txt
rm results.txt
