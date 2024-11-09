#!/bin/bash   
set -m

sleep 5 &
sleep 10 &
sleep 15 &

echo "Sleeps started"

jobs

fg %2

jobs

fg %3

jobs

