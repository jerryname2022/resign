#!/usr/bin/env bash
unzip -o your.apk -d path
cd path
rm -r -f META-INF/
zip -r product.apk *
mv product.apk ..
cd ..
rm -f -r path
jarsigner -keystore apk.keystory -storepass pwd -keypass pwd product.apk  keyAlias
zipalign 4 product.apk out-apk-resigner.apk
