#!/usr/bin/env bash

export PORT=$(( ( RANDOM % 10000 )  + 10000 ))
echo "random port is $PORT"
make all
