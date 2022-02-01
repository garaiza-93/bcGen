#!/bin/bash

bulkCmd='!addbulk'
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
		a) bulkCmd='!addbulk';;
		r) bulkCmd='!removebulk';;
		u) bulkCmd='!updatebulk';;
		n) lines=$OPTARG ;;
		o) file='$OPTARG' ;;
	esac
done

#check for text and process it
if [ $(( $# - $OPTIND )) -lt 0 ]; then
	help
	exit 1
else
	text=${@:$OPTIND:1}
	echo "Text: ${text}"
	echo "Lines: ${lines}"
	
	for (( i=1;i<=${lines};i++ ))
	do
		if [ $i -eq 1 ]; then
			printf "%s " $bulkCmd		
		fi
			printf "item=%s \n" "${text/!!/$i}" #Modify this line if needed. For example, for extra paramters like 'group' or 'intent'
	done
fi

