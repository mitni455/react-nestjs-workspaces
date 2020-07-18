#!/bin/bash
mongo --eval "db.stats()"  # do a simple harmless command of some sort

RESULT=$?   # returns 0 if mongo eval succeeds

if [ $RESULT -ne 0 ]; then
    echo "❌ 🐢  mongodb not running"
    exit 1
else
    echo "✅ 🐢  mongodb running!"
fi