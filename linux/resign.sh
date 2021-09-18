#!/usr/bin/env bash


location=/home/xiaoming/Downloads/xiaoming/resign
apk_tmp=tmp.apk
apk_input=source.apk
apk_out=out-resigner.apk

zipalign=/home/xiaoming/Android/Sdk/build-tools/23.0.3/zipalign

keystore=/home/xiaoming/Downloads/xiaoming/resign/test.jks
alias=test
storepass=654321
keypass=654321

function rezip_apk(){
	unzip ${location}/${apk_input} -d ./tmp
	cd tmp
	rm -rf META-INF/
	zip -r ${apk_tmp} *
	mv ${apk_tmp} ../
	cd ..
	rm -rf ./tmp
}

function resign(){
	jarsigner -keystore ${keystore} -storepass ${storepass} -keypass ${keypass} ${apk_tmp} ${alias} 

	${zipalign} 4 ${apk_tmp} ${apk_out}
	rm -rf ${apk_tmp}
}
rezip_apk
resign

