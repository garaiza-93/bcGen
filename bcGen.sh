#!/bin/bash

addCmd=0
removeCmd=0
updateCmd=0
lines=1
file=''
text=''
function help() {
	echo "	Usage: $0  [options] 'text to !! use'"
	cat usage
}
#Process options
while getopts 'harun:o:' flag; do
	case "${flag}" in
		h) help exit 1 ;;
		a) addCmd=1 removeCmd=0 updateCmd=0;;
		r) addCmd=0 removeCmd=1 updateCmd=0;;
		u) addCmd=0 removeCmd=0 updateCmd=1 ;;
		n) lines=$OPTARG ;;
		o) file="$OPTARG" ;;
	esac
done
if [ $(( addCmd^removeCmd^updateCmd )) -lt 1 ]; then
	help
	exit 1
fi

#check for text and process it
if [ $(( $# - $OPTIND )) -lt 0 ]; then
	help
	exit 1
else
	text=${@:$OPTIND:1}
	echo "Text: ${text}"
	echo "Lines: ${lines}"
	
fi

