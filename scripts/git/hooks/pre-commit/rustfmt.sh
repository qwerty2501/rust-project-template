#!/bin/bash
file_path=$1
rustfmt $file_path
git add $file_path
