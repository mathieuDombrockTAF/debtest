```
# DL a package .deb file but dont install
mkdir debdown
cd debdown
sudo apt download <package-name>
cd ..
# Extract the deb
mkdir debout
dpkg-deb -x ./debdown/*.deb ./deb
cd deb
# Extract meta
dpkg-deb -e ../*.deb
# Build
dpkg-deb -b . ../example-new.deb
# Install
sudo dpkg -i ../example-new.deb
```
