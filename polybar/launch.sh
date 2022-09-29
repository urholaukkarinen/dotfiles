#!/usr/bin/env bash

polybar-msg cmd quit
polybar mainbar 2>&1 | tee -a /tmp/polybar1.log & disown
