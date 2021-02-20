#!/bin/bash

set -eu

cr=$(dirname $0)
cd $cr

remote="$1"
url="$2"
local_ref="$3"
local_sha="$4" 
remote_ref="$5" 
remote_sha="$6"
range="$7"


procs=()
for entry in ./*
do
	if [ "$(basename $0)" != "$(basename $entry)" ]; then
		$entry $remote $url $local_ref $local_sha $remote_ref $remote_sha $range &
		procs=("${procs[@]}" $!)
	fi
done


for proc in ${procs[@]};
do
	wait $proc
done
