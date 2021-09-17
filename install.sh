#!/bin/bash

echo "Starting installation of fedora-java-scripts"

echo "Copy install-jdk.sh into /usr/bin ignoring existing script"
cp -r install-jdk.sh /usr/bin/install-jdk
chmod +x /usr/bin/install-jdk

echo "Copy switch-jdk.sh into /usr/bin ignoring existing script"
cp -r switch-jdk.sh /usr/bin/switch-jdk
chmod +x /usr/bin/switch-jdk
