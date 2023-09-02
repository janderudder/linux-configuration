## shell utils
################################################################################
strlen()
{
	for arg in "$@"; do
		echo ${#arg}
	done
}


## processes
################################################################################
process_pid()
{
    pgrep "$1"
    return $?
}


process_name()
{
    ps -p "$1" -o comm=
    return $?
}


## dev
################################################################################
set_c_compiler()
{
	export CC="$1"
	if [[ $1 == gcc ]]; then
		export CXX=g++
	else
		export CXX="${1}++"
		[[ $1 != clang ]] && echo "CXX set to $CXX"
	fi
	return 0
}
