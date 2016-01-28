#!/bin/bash

#  Macports AutoUpdate.sh
#  Created by Sam Cohen on 8/6/15.

echo "Checking for updates"
sudo port selfupdate > /dev/null
echo "Repositories up-to-date"
sudo port upgrade outdated
echo "All software up-to-date"
sleep 2
echo "Removing old ports"
sudo port uninstall inactive > /dev/null # If lots of compiling necessary, you may have to reenter admin password here
echo "Done!"
exit 0
