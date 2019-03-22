#!/usr/bin/env bash
location=/home/xiaoming/Desktop/resign/tools

dexfile=$location/classes10.dex
baksmali=$location/baksmali-2.0.3.jar
smali=$location/smali-2.0.3.jar

smaliout=$location/out
smaliin=$location/out

function dex2smali(){
	java -jar $baksmali -o $smaliout $dexfile
}

function smali2dex(){
	java -jar $smali -o $dexfile $smaliin
}

smali2dex
