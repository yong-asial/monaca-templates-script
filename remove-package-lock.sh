#!/bin/bash
echo "Remove Package-lock.json"
baseDir='/Users/asial/projects/monacaTemplates/monaca-templates';
while read p; do
  templateDir="$baseDir/$p";
  cd "$templateDir";
  echo "$p"; 
  rm -rf package-lock.json;
  echo "";
done <templateList.txt