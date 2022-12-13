function get_process_pid
{
    pgrep "$1"
    return $?
}


function get_process_name
{
    ps -p "$1" -o comm=
    return $?
}
