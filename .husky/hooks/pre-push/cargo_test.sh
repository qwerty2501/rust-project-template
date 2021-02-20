#!/bin/bash

set -eu


wd=$(dirname $0)/../../..
cd $wd


cargo make pre-push
