#!/bin/bash

# Executing all install scripts in children directories
for dir in $CONFIG_PATH/config/*/; do
	. $dir/install.sh
done
