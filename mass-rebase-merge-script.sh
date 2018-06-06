#!/usr/bin/env bash

rm -rf ../test-mass-rebase-merge
mkdir ../test-mass-rebase-merge
cp mass-rebase-merge.sh ../test-mass-rebase-merge/mass-rebase-merge.sh
cd ../test-mass-rebase-merge
chmod +x mass-rebase-merge.sh
git init
./mass-rebase-merge.sh
