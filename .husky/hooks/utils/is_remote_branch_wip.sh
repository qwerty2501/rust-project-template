#!/bin/bash

set -eu


case "${GIT_HOOKS_REMOTE_REF##refs/heads/}"
	wip/*) exit 0;;
esac

exit 1

