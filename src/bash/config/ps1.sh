# This PS1 makes use of git-prompt.sh
PS1='\[\033[32m\]\u\[\033[35m\] \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n\[\033[3`[[ $? -eq 0 ]] && echo 2 || echo 1`m\]\$ \[\033[0m\]'
