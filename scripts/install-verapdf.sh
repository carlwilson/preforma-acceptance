#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export SCRIPT_DIR
sed -i.bak s:INSTALL_DIR:/home/ubuntu/verapdf:g "${SCRIPT_DIR}/verapdf-auto-install.xml"
wget -O verapdf-installer.zip http://software.verapdf.org/dev/verapdf-installer.zip
unzip -u verapdf-installer.zip
find -type f -name "verapdf-izpack-installer*.jar" -exec sh -c 'java -jar {} "$SCRIPT_DIR"/verapdf-auto-install.xml' \;
cp -f "${SCRIPT_DIR}/features.xml" ./verapdf/config/
vera_version=$(./verapdf/verapdf --version | sed -n 1p | grep -E -o "\b[0-9]*\.[0-9]*\.[0-9]*\b" | tr . _)
echo "$vera_version"
