#!/usr/bin/env bash

LIMIT=10

# ============================== master branch =================================
echo '# Merge with no fast forward' > README.md
git add .
git commit -m 'Add README'

echo '---' >> README.md
echo 'https://github.com/git-school/visualizing-git/blob/gh-pages/examples/merging.md' >> README.md
git commit -am 'Add reference'

# ============================== NDKhoa00x branch ==============================
for i in $(seq 1 $LIMIT)
do
  git checkout -b NDKhoa00$i
  echo 'first line' > file-00$i.txt
  git add .
  git commit -m "NDKhoa00$i: Add file-00$i"

  echo 'second line' >> file-00$i.txt
  git commit -am "NDKhoa00$i: Add more line"

  git checkout master
done

# =============== continue work on master branch ===============================
echo 'https://git-scm.com/book/en/v2/Git-Branching-Rebasing' >> README.md
git commit -am 'Add Git Branching Rebasing note'

echo 'https://git-scm.com/docs/git-rebase' >> README.md
git commit -am 'Add git-rebase doc'

# =============== merge NDKhoa00x branch into master branch ====================
for i in $(seq 1 $LIMIT)
do
  git checkout NDKhoa00$i
  git rebase master
  git checkout master
  git merge NDKhoa00$i
done
