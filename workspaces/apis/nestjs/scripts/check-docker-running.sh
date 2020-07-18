#!/bin/bash
docker container ls -a  # do a simple harmless command of some sort

RESULT=$?   # returns 0 if mongo eval succeeds

if [ $RESULT -ne 0 ]; then
    echo "❌ 🐳 docker not running"
    exit 1
else
    echo "✅ 🐳 docker running!"
fi