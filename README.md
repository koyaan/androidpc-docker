# [AndroidProjectCreator](https://github.com/ThisIsLibra/AndroidProjectCreator) dockerized

https://github.com/ThisIsLibra/AndroidProjectCreator

Run like this:

```
docker run -v `pwd`:/share koyaan/androidpc -decompile JADX /share/client.apk /share/client_jadx
sudo chown -R $USER  client_jadx
```

Has lots of decompilers to choose from:
```
$ docker run koyaan/androidpc 
[+]AndroidProjectCreator 1.3.1-stable [developed by Max 'Libra' Kersten <info@maxkersten.nl> or @LibraAnalysis on Twitter]

[+]AndroidProjectCreator has multiple modes, all of which are explained below, together with the required parameters.
	-install
		This option requires an internet connection as it clones multiple repositories from Git.
		After the repositories have been downloaded, the projects will be compiled. 
		Then, the compiled repositories are saved in a folder named "Library" in the folder where the JAR resides.
		The repositories are then deleted from the disk.
		Currently, the following tools are embedded:
			APKTOOL
			CFR
			DEX2JAR
			FERNFLOWER
			JADX
			JDCMD
			JEB3
			PROCYON
	-update
		Updating the library folder is equal to reinstalling the library using the -install function.
	-decompile
		Using this function, more parameters are required.
		The name of the decompiler needs to be specified, using one of the following embedded decompilers:
			CFR, FERNFLOWER, JADX, JDCMD, JEB3 and PROCYON
		Additionally, the location of the APK and the output location for the Android Project are required.
		Sample usage to decompile an APK:
			java -jar ./AndroidProjectCreator.jar -decompile FERNFLOWER /path/to/the.apk /output/path/
		Note that one should provide the path to the JEB3 folder as a fifth argument if JEB3 is chosen to decompile the code.
 ``` 
