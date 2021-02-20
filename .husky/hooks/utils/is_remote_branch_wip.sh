#!/bin/bash

set -eu

echo "REMOTE_REF:$GIT_HOOKS_REMOTE_REF"
case "${GIT_HOOKS_REMOTE_REF##refs/heads/}"
	wip/*) exit 0;;
esac

exit 1

