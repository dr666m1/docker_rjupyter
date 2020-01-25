#!/bin/bash
cd /sync > /dev/null 2>&1
jupyter lab --port 8888 --ip=0.0.0.0 --allow-root
