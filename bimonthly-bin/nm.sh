cd pacman-repo
cd repo
find . -name '*:*' -type f -print0 | perl -0ne '
  rename $_, s{[^/]+$}{$& =~ y/:/-/r}res or warn "rename $_: $!"'
cd ..
cd ..