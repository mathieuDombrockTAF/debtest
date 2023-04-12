# DL a package .deb file but dont install
sudo apt download $1
# Extract the deb
mkdir debout
dpkg-deb -x *.deb ./debout
cd debout
# Extract meta
dpkg-deb -e ../*.deb
# Build
dpkg-deb -b . ../example-new.deb
# Install
sudo dpkg -i ../example-new.deb
