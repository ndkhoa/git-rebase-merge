#!/usr/bin/env bash

rm -rf ../test-rebase-merge
mkdir ../test-rebase-merge
cp rebase-merge.sh ../test-rebase-merge/rebase-merge.sh
cd ../test-rebase-merge
chmod +x rebase-merge.sh
git init
./rebase-merge.sh
