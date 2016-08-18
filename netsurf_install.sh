#!/bin/bash
wget http://git.netsurf-browser.org/netsurf.git/plain/Docs/env.sh
source env.sh
ns-package-install
ns-clone
ns-pull-install
sleep 2
rm env.sh
cd ~/dev-netsurf/workspace
source env.sh
sleep 2
cd netsurf
make
sleep 2
./nsgtk
