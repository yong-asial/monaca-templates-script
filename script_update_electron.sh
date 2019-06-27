#!/bin/bash
baseDir='/Users/asial/projects/monacaTemplates/monaca-templates';
while read p; do
  echo "$p"; 
  templateDir="$baseDir/$p";
  cd "$templateDir";
  # 1. install monaca-plugin-monaca-core DONE
  # npm install monaca-plugin-monaca-core@latest;
  # 2. delete unused electron icons - config.xml DONE
  # 3. delete unused electron icons - res folder DONE
  # rm -rf res/electron/icon/icon_electron_128.png res/electron/icon/icon_electron_16.png res/electron/icon/icon_electron_24.png res/electron/icon/icon_electron_256.png res/electron/icon/icon_electron_32.png res/electron/icon/icon_electron_48.png res/electron/icon/icon_electron_64.png res/electron/icon/icon_electron_96.png
  # 4. replace loader.js DONE
  # 5. update onsen-ui - npm install onsenui@latest if it has dependencies in package.json DONE
  # 6. optional fix npm security - run npm audit fix (but need to test)
  # 7. increase version - package.json, package-lock.json, create commit, create git tag
  # npm version patch --tag-version-prefix="" --message="update template for electron platform - remove unused icons, update loader.js script, update npm dependencies";
  echo "";
done <templateList.txt