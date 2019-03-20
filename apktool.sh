#!/usr/bin/env bash
location=/home/xiaoming/Desktop/resign

apkfile=$location/weixin_1400.apk
apktool=$location/apktool_2.4.0.jar

function unzipfile(){
	java -jar $apktool d $apkfile
}

function zipfile(){
	java -jar $apktool b $1
}

unzipfile
