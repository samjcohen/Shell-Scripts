#!/bin/sh

#  Internet Share.sh
#  Created by Sam Cohen on 6/5/15.

if sudo launchctl list | grep NetworkSharing >/dev/null; then # don't use full daemon name, just variable part, > sends grep outut to /dev/null
  sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.NetworkSharing.plist;  # <unload> stops internet sharing
  echo "Internet Sharing Off"
else
  sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.NetworkSharing.plist # <load> starts internet sharing
  echo "Internet Sharing On"
fi
return 0
