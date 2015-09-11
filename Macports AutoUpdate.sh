#!/bin/bash

#  Macports AutoUpdate.sh
#  Created by Sam Cohen on 8/6/15.

sudo port selfupdate > /dev/null
echo "Repository up-to-date"
sudo port upgrade outdated
sudo port uninstall inactive > /dev/null # If lots of compiling nessessary, you may have to reenter admin passsword here
echo "Removing old ports"
echo "All software up-to-date"
exit 0
