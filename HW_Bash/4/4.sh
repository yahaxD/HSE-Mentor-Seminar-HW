#!/bin/bash

greetings() {
  echo "Hello, $1"
}

sum() {
  echo "$1 + $2 = $(( $1 + $2 ))"
}

greetings $1

sum $2 $3
