#!/bin/bash
pkill eww
eww daemon
eww open notifications_popup
python3 ~/.config/eww/scripts/notifications.py &