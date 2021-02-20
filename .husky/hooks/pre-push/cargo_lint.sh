#!/bin/bash

set -eu

wd=$(dirname $0)/../../..
cd $wd


RUSTFLAGS="-D warnings" cargo clippy
