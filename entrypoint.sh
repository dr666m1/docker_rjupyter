#!/bin/bash
if [ -v REPOS ]; then
    git clone $REPOS /root/.jupyter/lab/user-settings/@jupyterlab
fi
cd /sync > /dev/null 2>&1
jupyter trust /sync/*.ipynb > /dev/null 2>&1
jupyter lab --port 8888 --no-browser --ip=0.0.0.0 --allow-root
