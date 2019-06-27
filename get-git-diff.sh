#!/bin/bash
echo "Getting tag"
baseDir='/Users/asial/projects/monacaTemplates/monaca-templates';
while read p; do
  templateDir="$baseDir/$p";
  cd "$templateDir";
  echo "$p"; 
  git diff --color package.json config.xml www/components/loader.js | less;
  echo "";
done <templateList.txt