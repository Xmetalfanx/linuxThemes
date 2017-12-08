#git filter-branch --commit-filter 'git commit-tree -S "$@";' -- --all
git filter-branch --commit-filter 'git commit-tree -S "$@";' HEAD


