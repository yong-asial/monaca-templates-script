#!/bin/bash
echo "Getting tag"
baseDir='/Users/asial/projects/monacaTemplates/monaca-templates';
while read p; do
  templateDir="$baseDir/$p";
  cd "$templateDir";
  echo "$p"; 
  rm -rf package-lock.json node_modules;
  npm install;
  echo "";
done <templateList.txt