## Application related global variables for Bash,
## functions and their accompanying global variables,
## aliases that go along some of these functions.

export EDITOR='nvim'
export PAGER='less'
export PNPM_HOME=~/.local/share/pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"

set_c_compiler clang

_bat()
{
    IFS=' ' command \bat $BAT_OPTIONS ${1+"$@"}
}
export BAT_OPTIONS='-p --wrap=character'
alias bat=_bat

_ls()
{
    IFS=' ' command -p ls $LS_OPTIONS ${1+"$@"}
}
export LS_OPTIONS="-Fh --group-directories-first --color=auto"
alias ls=_ls
