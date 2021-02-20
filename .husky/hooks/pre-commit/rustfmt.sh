#!/bin/bash

set -eu
wd=$(dirname $0)/../../..
cd $wd
file_path=$1

rustfmt --edition 2018 $file_path
