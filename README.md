# Fedora Java Scripts

My personal shell scripts for working with Java on Fedora. Highly opinionated. Use at your own risk ;)

## Why these scripts? There is `alternatives`!

IMHO alternatives is way too complex to use when I just want to change the Java version I use on the command line. Arch provides
the great `archlinux-java` script to achieve quick switches of Java versions and I wanted a similar experience on Fedora too.

## Goals

- Simple installation of JDK version with clean `alternatives` afterwards
- Simple change between Java versions on the command line utilizing `$JAVA_HOME` and `$PATH`

## Which JDK packages are used?

The scripts rely on OpenJDK at the moment. Maybe I'll change at some time to adoptium.

## Usage

1. Define `$JAVA_HOME` in your `[.bashrc, .zshrc, ...]` as `/usr/lib/jvm/default` and add it to `$PATH`
2. Clone this repository
3. Run `sudo sh install.sh`
4. Run the scripts with `install-jdk` and `switch-jdk`
