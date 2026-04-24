#!/bin/bash
git checkout -B L1T2

git config --global user.email "auto.commit@mail.com"


git config --global user.name "autocommit"

git add -A .
git commit -m "$1"
git log -1
