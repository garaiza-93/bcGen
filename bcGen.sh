#!/bin/bash

function help() {
	echo "	Usage: $0  [options]"
	cat usage
}

if [ $# -eq 0 ] 
then
	help
	exit 1
else

	exit 0
fi

