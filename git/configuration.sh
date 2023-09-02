git config --global user.name 'Jan De Rudder'
git config --global user.email '39810873+janderudder@users.noreply.github.com'
git config --global init.defaultBranch 'main'

if command -v bat > /dev/null 2>&1; then
  pager='\bat -p --wrap=character --force-colorization'
elif test -n "$PAGER"; then
    pager="$PAGER"
fi

git config --global core.pager "$pager"

