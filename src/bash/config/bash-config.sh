# Bash general settings
set -o noclobber    # avoid implicit overwrite by stream redirection
shopt -s no_empty_cmd_completion
shopt -s nullglob
shopt -s direxpand  # hack solution to avoid the '$'' quoting behavior

# Bash history settings
shopt -s histappend
shopt -s lithist
#shopt -s histverify
export HISTFILE=~/.bash_history
export HISTFILESIZE=8000
export HISTSIZE=8000
export HISTCONTROL='ignoreboth'
export HISTTIMEFORMAT='%d/%m '

# locale settings
export LC_CTYPE=fr_FR.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_TIME=fr_FR.UTF-8
