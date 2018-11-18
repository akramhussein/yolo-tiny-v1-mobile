#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
set -o xtrace

source activate tensorflow-1.2
jupyter notebook --ip 0.0.0.0 --port 8888 --allow-root --no-browser
