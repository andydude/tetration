#!/bin/bash

# Step 1. get list of pages
./pages.sh

# Step 2. compile pages
make -f build.mk

# Step 3. minify pages
#ant
