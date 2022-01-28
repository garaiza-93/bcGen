#!/bin/bash

addCmd=0
removeCmd=0
updateCmd=0
nSkus=1
file=''

function help() {
	echo "	Usage: $0  [options]"
	cat usage
}

while getopts 'harun:o:' flag; do
	case "${flag}" in
		h) help exit 1 ;;
		a) addCmd=1 ;;
		r) removeCmd=1 ;;
		u) updateCmd=1 ;;
		n) nSkus=$OPTARG ;;
		o) file="$OPTARG" ;;
	esac
done

