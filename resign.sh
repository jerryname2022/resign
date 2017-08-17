#!/usr/bin/env bash
unzip -o ejy3.0-release-3.1.3.encrypted.apk -d product
cd product
rm -r -f META-INF/
zip -r product.apk *
mv product.apk ..
cd ..
rm -f -r product
jarsigner -keystore ejy.keystory -storepass 123456 -keypass zlwy123456 product.apk ejy
zipalign 4 product.apk ejy-360-resigner.apk
