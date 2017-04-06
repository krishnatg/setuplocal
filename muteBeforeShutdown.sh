#!/bin/bash

# copy this file to /Users/Shared/ and give it executable permissions (execute chmod +x /Users/Shared/muteBeforeShutdown.sh)

tempfile="/Users/Shared/.tempCurrVol.txt" ;
status=`osascript -e 'output muted of (get volume settings)'` ;
if [ "$status" == "false" ] ; then
	`osascript -e 'set ovol to output volume of (get volume settings)' > $tempfile` ;
	`osascript -e 'set volume output muted true'`
fi
