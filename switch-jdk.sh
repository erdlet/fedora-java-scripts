#!/bin/bash

if [[ "${1}" == '-h' ]]; then

    echo "switch-jdk: Switches the current JDK located in /usr/lib/jvm/default"
    echo "Attention: Has to be executed as root"
    echo ""
    echo "Usage: sh switch-jdk.sh [-h] [VERSION]"
    echo ""
    echo "-h: Shows this help"
    echo "VERSION: The JDK version to use. Exists when no version is set."
    
    exit
fi

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

java_version=${1}
default_file=/usr/lib/jvm/default

echo "Searchig for install dir in /usr/lib/jvm for version $java_version"
installed_dir=$(find /usr/lib/jvm/ -name "java-$java_version-*" -type d)

if [[ -z $installed_dir ]]; then
	echo "Could not find install dir for JDK $java_version. Exit program..."
	exit
else
	echo "Found install dir $installed_dir. Linking to /usr/lib/jvm/default"
	if [[ -f "$default_file" ]]; then
            rm "$default_file"
        fi
	ln -s $installed_dir /usr/lib/jvm/default
fi
