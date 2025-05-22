#!/bin/bash

status=$1

if [ "$status" = "SUCCESS" ]; then
    echo "Build passed! All systems go 🚀" > build_summary.sh
else
    echo "Build failed! Something went wrong 💥" > build_summary.sh
fi 
    