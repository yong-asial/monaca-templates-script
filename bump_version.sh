#!/bin/bash
baseDir='/Users/asial/projects/monacaTemplates/monaca-templates';
while read p; do
  echo "$p"; 
  templateDir="$baseDir/$p";
  cd "$templateDir";
  npm version patch --tag-version-prefix="" --message="chore: bump version";
  echo "";
done <templateList.txt