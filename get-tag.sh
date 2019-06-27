#!/bin/bash
echo "Getting tag"
baseDir='/Users/asial/projects/monacaTemplates/monaca-templates';
while read p; do
  templateDir="$baseDir/$p";
  cd "$templateDir";
  echo "$p"; 
  git describe --tags `git rev-list --tags --max-count=1`;
  echo "";
done <templateList.txt