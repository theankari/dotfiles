#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-1'

all_sinks=$(pactl list short sinks | cut -f 2)

default_sink=$(pactl info | grep 'Default Sink' | cut -d : -f 2)

active_sink=$(echo "$all_sinks" | grep -n $default_sink | cut -d : -f 1)

selected_sink=$(echo "$all_sinks" | rofi -theme ${dir}/${theme}.rasi -dmenu -i -a $(($active_sink - 1)) -p 'Select a device: ')

pactl set-default-sink $selected_sink
