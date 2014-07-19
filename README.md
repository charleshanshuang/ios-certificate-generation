ios-certificate-generation
==========================
Overview
-Used for generating the Certificate Signing Request and p12 files used for signing iOS Apps
-For Windows
-Useful for Adobe Air apps!
-Requires OpenSSL

Instructions for generating Certificate Signing Request
-Generating the Certificate Signing Request comes first, so start by editing the Generate iOS Certificate Signing Request.bat (use Notepad or Notepad++) 
-Configure the batch file by editing it to point to the proper OpenSSL/bin directory location and edit the key filename, certificate signing request filename, email, country, name. 
-Run and press any key during the appropriate prompts, producing the key and the Certificate Signing Request. (By default these files will be generated in the OpenSSL/bin directory, unless you edit their file paths.
NOTE: The Key generated during this step will be used for generating the .p12 file! DO NOT DELETE THE KEY!
-Afterwards, you may submit your Certificate Signing Request to Apple at http://developer.apple.com to received your certificate.

Instructions for generating .p12 
-Generating the .p12 comes after generating your key and certificate. If these are done, start by editing the Generate iOS p12.bat
-Configure the batch file by editing the OpenSSL directory location. Edit the .pem filename (if desired, not really necessary), edit the key filename, and p12 filename. NOTE: You must be using the original key file that you generated while generating the Certificate Signing Request.
-Run and press any key during the appropriate prompts, producing the .pem and the .p12 file. (By default these files will be generated in the OpenSSL/bin directory, unless you edit their file paths.


Based off the guides from:
http://blog.nngafook.com/2012/06/ios-certificate-process/
http://www.untoldentertainment.com/blog/2011/11/30/flash-to-ios-a-step-by-step-tutorial-part-2/
