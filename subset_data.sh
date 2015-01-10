#!/usr/bin/env bash

cat household_power_consumption.txt | grep -E "^(1|2)\/2\/2007" | sed -e 's/;/ /' | sed -e 's/\?/NA/g' > subset.txt
