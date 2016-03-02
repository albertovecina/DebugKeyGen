#!/bin/bash
if [ -f $1 ]; then
	echo `cp $1 develop.jks`

	echo "Enter keystore password:"
	read keystorePass
	echo "Enter alias:"
	read aliasName
	echo "Enter alias password:"
	read aliasPass

	echo Change keystore password
	echo `keytool -storepasswd -keystore develop.jks -storepass $keystorePass -new android`
	echo Change alias name
	echo `keytool -changealias -keystore develop.jks -storepass android -keypass $aliasPass -alias $aliasName -destalias androiddebugkey`
	echo Change alias password
	echo `keytool -keypasswd -alias androiddebugkey -keystore develop.jks -storepass android -keypass $aliasPass -new android`
else 
	echo "Keystore not found"
fi

