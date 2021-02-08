#!/bin/bash

# Executing all install scripts in children directories
for dir in $EAFTOS_PATH/config/*/; do
	. $dir/install.sh
done
