#! /bin/bash
VERSION="v18.15.0"
NODE_URL="https://nodejs.org/dist/$VERSION/node-$VERSION-linux-x64.tar.xz"
# https://nodejs.org/dist/v18.15.0/node-v18.15.0-linux-x64.tar.xz

echo "Downloading NodeJS: $VERSION..."
echo "From $NODE_URL"
wget $NODE_URL

echo "Extracting Archive..."
tar -xJf *.tar.xz || exit 1

echo "Removing Download..."
rm *.tar.xz

echo "Removing Old Bin..."
rm -rf ./custom

echo "Renaming Archive Output..."
mv node* ./custom

echo "--------"
echo "Done!"
echo "Use alias 'nodex' to run this custom node version."
echo "Custom NodeJS executable at: '/opt/debtest/nodebin/custom/bin/node'"