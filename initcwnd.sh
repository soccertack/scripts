#!/bin/bash
BASE=`ip route show | grep eth1 | cut -d\  -f1-13`
ip route change $BASE initcwnd $1
ip route show
