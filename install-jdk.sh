#!/bin/bash

if [[ "${1}" == '-h' ]]; then

    echo "install-jdk: Installs specific JDK version"
    echo "Attention: Has to be run as root."
    echo ""
    echo "Usage: sh install-jdk.sh [-h] [VERSION]"
    echo ""
    echo "-h: Shows this help"
    echo "VERSION: The Java version to be installed."
    
    exit
fi

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

java_version="${1}"

if [[ -z $java_version ]]; then
    dnf install "java-latest-openjdk" "java-latest-openjdk-javadoc" "java-latest-openjdk-src"
else
    dnf install "java-${java_version}-openjdk" "java-${java_version}-openjdk-javadoc" "java-${java_version}-openjdk-src"
fi

alternatives --remove-all java
alternatives --remove-all javac
