#!/bin/bash

connectedOutputs=$(xrandr | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")

for display in $connectedOutputs
do
	xrandr --output $display --brightness 1
done
