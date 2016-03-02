#DebugKeyGen
This script generates a debug keystore, using our release keystore. Usually we need to generate a debug apk using the same fingerprint that we use for the release version (Ex: To use a MapFragment without change the google api key).


#How to use
Create the  debug keystore.

	sh debugKeyGen release.jks

Following the steps we get the file develop.jks. Put this file into your project root folder.

Modify your module build.gradle file.

	android {
		...
		signingConfigs {
       		 debug {
         		   storeFile file("../develop.jks")
      	 	 }
   	 	}
    	...
    }
    
Now you can build your debug apk as usual.