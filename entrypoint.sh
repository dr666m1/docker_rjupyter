#!/bin/bash
cd /sync > /dev/null 2>&1
jupyter lab --port 8888 --no-browser --ip=0.0.0.0 --allow-root
