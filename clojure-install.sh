#!/bin/bash

# https://clojure.org/guides/getting_started#_installation_on_linux
sudo apt install rlwrap
curl -O https://download.clojure.org/install/linux-install-1.10.1.727.sh
chmod +x linux-install-1.10.1.727.sh
sudo ./linux-install-1.10.1.727.sh
rm linux-install-1.10.1.727.sh
