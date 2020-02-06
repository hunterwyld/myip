#!/bin/bash

ct=5
mt=10

curl --connect-timeout $ct --max-time $mt ifconfig.me

if [ $? = 0 ]; then
  exit 0
fi

curl --connect-timeout $ct --max-time $mt ipinfo.io
