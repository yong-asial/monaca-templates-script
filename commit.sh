#!/bin/bash
baseDir='/Users/asial/projects/monacaTemplates/monaca-templates';
while read p; do
  templateDir="$baseDir/$p";
  cd "$templateDir";
  echo "$p"; 
  git add .; git cm "chore: add auto-resize splash screen to ios platform";
  sleep 1s;
  echo "";
done <templateList.txt