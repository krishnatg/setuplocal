#!/bin/bash

# run this file from any path. It will create a file whose name is specified in the below variable.

file="/Users/Shared/muteBeforeShutdown.sh" ;

if [ ! -f $file ] ; then
	echo "#!/bin/bash" > $file ;
	echo "osascript -e 'set volume output muted true'" >> $file ;
	`sudo defaults write com.apple.loginwindow LogoutHook $file` ;
fi
