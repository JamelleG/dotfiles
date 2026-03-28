#!/usr/bin/env bash

# =======================================================================
# Polybar Launch Script
# =======================================================================

polybar-msg cmd quit

mkdir -p /tmp/polybar

export POLY_BAT=$(ls -1 /sys/class/power_supply/ 2>/dev/null | grep -E '^BAT' | head -n 1)
export POLY_ADP=$(ls -1 /sys/class/power_supply/ 2>/dev/null | grep -E '^AC|^ADP' | head -n 1)

polybar topbar 2>&1 | tee /tmp/polybar/topbar.log & disown

echo "Polybar launched successfully! Logs saved to /tmp/polybar/topbar.log"
