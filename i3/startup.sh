#!/bin/bash

pgrep -f redshift || redshift -l 62.24147:25.72088 &

xset -dpms
