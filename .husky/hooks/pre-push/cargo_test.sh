#!/bin/bash

set -eu


wd=$(dirname $0)/../../..
cd $wd

if $wd/.husky/hooks/utils/is_remote_branch_wip.sh; then
	exit 0
fi


cargo make pre-push
