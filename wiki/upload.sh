#!/bin/bash
set -euo pipefail

# Build the static site fresh.
rm -rf ./site
mkdocs build

# Sync the build output into the GitHub Pages repo.
#
# Why rsync --delete instead of `cp`:
#   `cp` only overwrites; it never removes files. Source files that were
#   renamed or deleted (e.g. an image) lingered forever in the Pages repo,
#   and one such stale file with a non-UTF-8 (GBK) name broke the Jekyll
#   build on GitHub Pages. --delete keeps the Pages repo in sync with the
#   build output so stale generated files are removed.
#
# Excluded paths live ONLY in the Pages repo and are NOT produced by mkdocs,
# so they must be preserved from --delete:
#   .git/   -> git metadata for the Pages repo
#   CNAME   -> custom domain (wiki.deskpi.com) for GitHub Pages
#   fonts/  -> web fonts referenced by css/theme.css via ../fonts/, not emitted by this build
#   assets/ -> legacy assets kept in the Pages repo
#
# No sudo: the Pages repo is owned by the current user. If you ever see
# permission errors, run once: sudo chown -R "$USER" ../../deskpi-team.github.io
rsync -a --delete \
  --exclude='.git/' \
  --exclude='CNAME' \
  --exclude='fonts/' \
  --exclude='assets/' \
  ./site/ ../../deskpi-team.github.io/

echo -e "\e[36;40mJob done!\e[0m"
