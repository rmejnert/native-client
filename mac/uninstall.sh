#!/usr/bin/env bash

cd ./app

MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
  id=`../node/x64/node -e "process.stdout.write(require('./config.js').id)"`
else
  id=`../node/x86/node -e "process.stdout.write(require('./config.js').id)"`
fi

echo "Native Client id is \"${id}\""
echo

echo " .. Removing manifest file for Google Chrome"
rm ~/Library/Application\ Support/Google/Chrome/NativeMessagingHosts/${id}.json
echo " .. Removing manifest file for Chromium"
rm ~/Library/Application\ Support/Chromium/NativeMessagingHosts/${id}.json
echo " .. Removing manifest file for Mozilla Firefox"
rm ~/Library/Application\ Support/Mozilla/NativeMessagingHosts/${id}.json
echo " .. Removing executable"
rm -r ~/.config/${id}

echo
echo ">>> Native Client is removed <<<".
