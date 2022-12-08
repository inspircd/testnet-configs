#!/bin/bash

ROOT=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))
if [ $# -eq 0 ]
then
	echo "<die reason=\"You did not specify a server argument to inspircd.sh!\">"
	exit 0
elif [ ! -f "${ROOT}/servers/$1.conf" ]
then
	echo "<die reason=\"The server argument you specified for inspircd.sh is not valid!\">"
	exit 0
fi

CONFIG_DATE=$(git -C ${ROOT} log --format=%cd --max-count=1 2>/dev/null)
CONFIG_REV=$(git -C ${ROOT} describe --always --dirty 2>/dev/null)
echo "<alias text=\"CONFREV\" replace=\"NOTICE \$nick :Configuration revision: ${CONFIG_REV} (${CONFIG_DATE})\">"
echo "<include file=\"${ROOT}/ephemeral/local.conf\" missingokay=\"yes\">"
echo "<include file=\"${ROOT}/servers/$1.conf\">"
echo "<include directory=\"${ROOT}/common\">"
