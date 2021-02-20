#!/bin/bash

set -eu

cr=$(dirname $0)
cd $cr


procs=()
for entry in ./*
do
	if [ "$(basename $0)" != "$(basename $entry)" ]; then
		$entry &
		procs=("${procs[@]}" $!)
	fi
done


for proc in ${procs[@]};
do
	wait $proc
done
