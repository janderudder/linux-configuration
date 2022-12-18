#!/bin/bash

GenerateWindowsShortcuts()
{
	local WinUserName=''
	local PersonalDocsFolderName=''
	local DocFolderLines=''

	[[ $# -eq 0 ]] && echo 'not enough arguments' >&2 \
		&& return 1

	[[ $# -ne 0 ]] && WinUserName="$1"
	shift

	[[ $# -ne 0 ]] && PersonalDocsFolderName="$1"
	shift

	if [[ -n $PersonalDocsFolderName ]]
	then
		DocFolderLines="export ${WinUserName^^}_UDOC=\"\$${WinUserName^^}/Documents\""
		DocFolderLines+=$'\n'
		DocFolderLines+="export ${WinUserName^^}_DOC=\"\$${WinUserName^^}/$PersonalDocsFolderName\""
	else
		DocFolderLines="export ${WinUserName^^}_DOC=\"\$${WinUserName^^}/Documents\""
	fi

	cat <<- DOC
		export ${WinUserName^^}='/mnt/c/Users/${WinUserName^}'
		$DocFolderLines
		export ${WinUserName^^}_DEV="\$${WinUserName^^}/dev"
		export ${WinUserName^^}_DOWNLOAD="\$${WinUserName^^}/Downloads"
	DOC

	return 0
}
