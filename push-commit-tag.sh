#!/bin/bash

baseDir='/Users/asial/projects/monacaTemplates/monaca-templates';
while read p; do
  templateDir="$baseDir/$p";
  cd "$templateDir";
  echo "$p";
  git push origin master --follow-tags;

  echo "";
done <templateList.txt
