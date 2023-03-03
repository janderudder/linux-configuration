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


set_c_compiler()
{
	[[ $1 != gcc && $1 != clang ]] \
		&& echo Warning, selected compiler is neither GCC nor Clang 1>&2
	export CC="$1"
	if [[ $1 == gcc ]]; then
		export CXX='g++'
	else
		export CXX="${1}++"
	fi
}
