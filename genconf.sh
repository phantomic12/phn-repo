build-pacman-repo print-config \
  --repository $repo_dir/$repo_name.db.tar.gz \
  --container pkg \
  --require-pkgbuild \
  --require-srcinfo \
  --with-install-missing-dependencies true \
  > build-pacman-repo.yaml
