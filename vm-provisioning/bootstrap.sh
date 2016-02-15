#!/bin/bash

SWIFT_SNAPSHOT='swift-2.2-SNAPSHOT-2016-02-08-a'
SWIFT_URL="https://swift.org/builds/swift-2.2-branch/ubuntu1404/${SWIFT_SNAPSHOT}/${SWIFT_SNAPSHOT}-ubuntu14.04.tar.gz"

echo "Install required packages..."

sudo apt-get update
sudo apt-get -y install curl vim clang libicu-dev

# install PGP keys
wget -q -O - https://swift.org/keys/all-keys.asc | gpg --import -

# Create swift directory
mkdir -p /opt/swift

curl -o /opt/swift/swift-snapshot.tar.gz $SWIFT_URL

cd /opt/swift

tar xzf swift-snapshot.tar.gz --strip-components 1

echo 'export PATH=/opt/swift/usr/bin:$PATH' >> /home/vagrant/.bashrc