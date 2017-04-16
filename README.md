# setuplocal
various scripts I use to customize my personal environment

- muteBeforeShutdown: Use this script to ensure that you don't hear the annoying start-up chime of a Mac irrespective of the volume at the time of shutdown. This script will mute the system volume when you tell your Mac to shutdown. Copy this script to /Users/Shared/ and execute "defaults write com.apple.loginwindow LogoutHook /Users/Shared/muteBeforeShutdown.sh"

- unmuteAfterLogin: Use this script to complete the task started by muteAfterShutdown script. This script will un-mute the system volume and bring it back to the volume of the system prior to shutdown. Copy this script to /Users/Shared/ and execute "defaults write com.apple.loginwindow LoginHook /Users/Shared/unmuteAfterLogin.sh"

* NOTE: The above two scripts work only when the same audio device is used across the reboot process. In other words, if you shutdown the system with an audio jack plugged in and power on the system with the jack plugged out (or vice-versa), this desired functionality won't work! *
