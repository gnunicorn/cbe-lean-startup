#/bin/bash

mkdir -p build
mv *html build
mv *png build
cp -R assets build/
git co gh-pages
mv -R build* .
git add .
git ci -m"updating build"
git push
