#!/bin/bash

set -e

p=${1}
s=${2}

python run_search.py -p ${p} -s ${s} > output/p${p}s${s}.log
