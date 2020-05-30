#!/usr/bin/env bash

mkdir build
echo "Hello from branch: $CIRCLE_BRANCH"
echo "this should go into the workspace" > build/output.txt
echo "this should not go into the workspace" > build/output.other