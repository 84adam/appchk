#!/bin/bash

if [ ! "`whoami`" = "root" ]; then
	echo "This script must be run as root. Exiting..."
	exit 1
fi

if [ -z $1 ]; then
	echo "Please provide the name of a package you wish to check and/or install."
	exit 1
fi

echo "CHECKING $1..." ;

which $1 2>&1 > /dev/null ;

APP_AVAIL=$? ;

if [ $APP_AVAIL -eq 0 ]; then
	echo "\`$1\` is already installed: $(which $1)"
else
	echo "$1 not installed. Installing now..."
	apt-get install $1
fi

echo "DONE" ;
