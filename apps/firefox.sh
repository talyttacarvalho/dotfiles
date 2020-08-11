#!/bin/sh

cd /tmp
export FIREFOX_URL="https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US"
export FIREFOX_LOCATION="/opt/firefox"

echo "Downloading Firefox..."
wget -O firefox.tar.bz2 "${FIREFOX_URL}"

echo "Download successful! Extracting Firefox..."
tar xjf firefox.tar.bz2

echo "Copying Firefox..."
rm -rf ${FIREFOX_LOCATION}
cp -r firefox ${FIREFOX_LOCATION}

echo "Cleaning up temporary files..."
rm /tmp/firefox.tar.bz2
rm -rf /tmp/firefox
echo "DONE!"
${FIREFOX_LOCATION}/firefox --version

sudo ln -sf /opt/firefox/firefox /usr/bin/firefox

echo -e '[Desktop Entry]\n Version=59.0.3\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox/firefox\n Icon=/opt/firefox/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' |
    sudo tee /usr/share/applications/firefox.desktop
