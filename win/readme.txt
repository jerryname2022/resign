

https://www.jianshu.com/p/5d78507d24db

1.解压apk到apk.out
apktool.bat d -o apk.out source.apk

2.修改apk.out下的文件。

3.打包apk.out为dst.apk
apktool.bat b -o dst.apk apk.out

4.签名
jarsigner -verbose -keystore spark.jks -signedjar dst_signed.apk dst.apk spark
jarsigner -verbose -keystore iex-0621.jks -signedjar iex_dst_signed.apk dst.apk iex0621



2.使apksigner对安装包进签名
C:\Users\Administrator\AppData\Local\Android\Sdk\build-tools\30.0.3\apksigner.bat sign --ks sign --ks F:\resign\win\spark.jks  --v1-signing-enabled F:\resign\win\app-_future-release-20220602-5_unsign.apk

3.检查是否签名成功
C:\Users\Administrator\AppData\Local\Android\Sdk\build-tools\30.0.3\apksigner verify -v F:\resign\win\app-_future-release-20220602-5_unsign.apk