#!/usr/bin/env bash

server="$1"
NODE_ENV=production node ./servers/$server &
pid=$!

url="http://127.0.0.1:$PORT/$2"
connections=200
threads=2
echo "url: $url"
echo "connections: $connections"
echo "threads: $threads"

echo "run $1 after 10s..."
sleep 10

## 预热
echo "    warm up..."
wrk $url \
  -d 1m \
  -c $connections \
  -t $threads \
  | grep 'Requests/sec' \
  | awk -v server="$server" '{ print $2 " Requests/sec - " server }'

sleep 10

# 真实测试
echo "    benchmark..."
wrk $url \
  -d 1m \
  -c $connections \
  -t $threads \
  | grep 'Requests/sec' \
  | awk -v server="$server" '{ print $2 " Requests/sec - " server }' >> results.txt

kill $pid

echo "finished $1"
