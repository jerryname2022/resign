#!/usr/bin/env bash
location=/home/xiaoming/Desktop/resign/tools
project=${location}/HelloWorld

keystore=${location}/test.jks
alias=test
storepass=125456
keypass=125489

cd ${project}
rm -r -f ${project}/META-INF/
zip -r ${project}/product.apk *
mv ${project}/product.apk ..
cd ..
jarsigner -keystore ${keystore} -storepass ${storepass} -keypass ${keypass} ${location}/product.apk  ${alias} 
/home/xiaoming/Android/Sdk/build-tools/26.0.2/zipalign 4 ${location}/product.apk ${location}/out-apk-resigner.apk
