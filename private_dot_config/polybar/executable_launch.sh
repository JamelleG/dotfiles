#!/usr/bin/env bash

# =======================================================================
# Polybar Launch Script
# =======================================================================

polybar-msg cmd quit

mkdir -p /tmp/polybar

polybar topbar 2>&1 | tee /tmp/polybar/topbar.log & disown

echo "Polybar launched successfully! Logs saved to /tmp/polybar/topbar.log"
