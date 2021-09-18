

1.解压apk到apk.out
apktool.bat d -o apk.out source.apk

2.修改apk.out下的文件。

3.打包apk.out为dst.apk
apktool.bat b -o dst.apk apk.out

4.签名
jarsigner -verbose -keystore spark.jks -signedjar dst_signed.apk dst.apk spark