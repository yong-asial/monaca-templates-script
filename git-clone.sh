#!/bin/bash
baseDir='/Users/asial/projects/monacaTemplates/monaca-templates';
while read p; do
  echo "$p";
  cd "$baseDir";
  git clone "git@github.com:monaca-templates/$p.git"
  echo "";
done <templateList.txt