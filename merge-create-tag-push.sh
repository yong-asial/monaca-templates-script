#!/bin/bash

baseDir='/Users/asial/projects/monacaTemplates/monaca-templates';
while read p; do
  templateDir="$baseDir/$p";
  cd "$templateDir";
  echo "$p"; 

  # get package version
  PACKAGE_VERSION=$(cat package.json \
    | grep version \
    | head -1 \
    | awk -F: '{ print $2 }' \
    | sed 's/[",]//g' \
    | tr -d '[[:space:]]')
  echo $PACKAGE_VERSION
  # merge dev_cordova9 and push changes to master
  git checkout master;
  git pull;
  git merge origin/dev_cordova9;
  git push origin master;
  # tag and push
  git tag -a $PACKAGE_VERSION -m "Template changes for cordova 9 support"
  git push origin $PACKAGE_VERSION

  echo "";
done <templateList.txt
