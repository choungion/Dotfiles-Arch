#!/bin/bash

# Launch htop in a new kitty terminal and store its PID
kitty --title "htop_float" -e htop &
HTOP_PID=$!

# Launch nvtop in a new kitty terminal and store its PID
kitty --title "nvtop_float" -e nvtop &
NVTOP_PID=$!

# Wait for either process to terminate
while ps -p $HTOP_PID > /dev/null && ps -p $NVTOP_PID > /dev/null; do
	sleep 0
done

# If htop is no longer running, kill nvtop
if ! ps -p $HTOP_PID > /dev/null; then
    kill $NVTOP_PID
fi

# If nvtop is no longer running, kill htop
if ! ps -p $NVTOP_PID > /dev/null; then
    kill $HTOP_PID
fi
