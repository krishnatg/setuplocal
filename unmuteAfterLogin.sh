#!/bin/bash

# copy this file to /Users/Shared/ and give it executable permission (execute chmod +x /Users/Shared/unmuteAfterLogin.sh)

tempfile="/Users/Shared/.tempCurrVol.txt" ;
status=`osascript -e 'output muted of (get volume settings)'` ;
if [[ "$status" == "true" ]] && [[ -f $tempfile ]] ; then
	oldLevel=`cat $tempfile` ;
	if [ "$oldLevel" != "" ] ; then
		osascript -e "set volume output volume \"$oldLevel\"" ;
		rm $tempfile ;
	fi
fi
