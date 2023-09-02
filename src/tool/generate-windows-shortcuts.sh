#!/bin/bash

#
# Paste output in `$XDG_CONFIG_HOME/shell/shortcuts.sh`
#
# Arguments
# 	$1 windows user name
# 	$2 (optional) name of custom documents folder
#

[[ $# -lt 1 ]] && echo 'not enough arguments' >&2 && exit 1

wuser="$1"
WUSER="${wuser^^}"

if [[ -n $2 ]]; then
	docShortcut="${WUSER}/'$2'"
else
	docShortcut="${WUSER}_UDOC"
fi

# output
cat <<-DOC
	# Windows related paths
	export ${WUSER}='/mnt/c/Users/${wuser}'
	export ${WUSER}_UDOC="\$${WUSER}/Documents"
	export ${WUSER}_DOC="\$${docShortcut}"
	export ${WUSER}_DEV="\$${WUSER}/dev"
	export ${WUSER}_DOWNLOAD="\$${WUSER}/Downloads"
DOC
