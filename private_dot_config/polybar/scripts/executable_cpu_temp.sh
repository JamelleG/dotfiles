#!/bin/sh

# =======================================================================
# Universal CPU Temperature Fetcher
# Requires: lm_sensors
# =======================================================================

# 1. First, try looking for AMD Ryzen processors.
# We pipe the 'sensors' output into 'awk', search for the line starting with "Tctl:", 
# and extract the 2nd column (which contains the actual temperature).
temp=$(sensors | awk '/^Tctl:/ {print $2}')

# 2. If the string is empty (-z), it means we aren't on a modern AMD CPU. 
# Next, try "Tdie:", which is the standard sensor name for older AMD architectures.
if [ -z "$temp" ]; then
    temp=$(sensors | awk '/^Tdie:/ {print $2}')
fi

# 3. If it's still empty, check for modern Intel processors.
# Intel usually reports the total chip temperature under "Package id 0:". 
# We print the 4th column here because Intel's sensor output has a few extra words.
if [ -z "$temp" ]; then
    temp=$(sensors | awk '/^Package id 0:/ {print $4}')
fi

# 4. If we STILL don't have a temperature, fall back to older Intel processors.
# "Core 0:" looks specifically at the first CPU core. While it's not the whole package, 
# it's a very reliable fallback for older Intel chips.
if [ -z "$temp" ]; then
    temp=$(sensors | awk '/^Core 0:/ {print $3}')
fi

# 5. Output the result to Polybar.
# The "${temp//+/}" syntax is a bash substitution that looks for any "+" sign 
# and replaces it with nothing. This turns "+45.0°C" into a much cleaner "45.0°C".
echo "${temp//+/}"
