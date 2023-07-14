#!/bin/sh

# cleanup
rm -rf dist
mkdir dist

# dbfiles folder content
cp -r dbfiles dist/

# config json file
cp config.json.dist dist/config.json

# .env file
cp http-service/.env.dist dist/.env

# run pyinstaller build on serial service
cd serial-service
./build.sh

# run pyinstaller build on http service
cd ../http-service
./build.sh

# run web app npm build on solar webapp
cd ../solar-webapp
npm run build_prod
mv dist-prod/ ../dist/webapp

cd ../
cp README-FIRST.md LICENSE dist/

# DONE