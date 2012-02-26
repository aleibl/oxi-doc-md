HOWTO install the OpenXPKI packages on a pristine installation of debian squeeze
================================================================================

Written by Oliver Welter.

OpenXPKI packages
-----------------

The packages are available at http://packages.openxpki.org/debian

Limitations
-----------

The packages feature a new (internal) certification interface, therefore there are some limitations:
* You can use only PKCS10 or server side key generation in CSRs
* LDAP publication is not working (will follow soon)
* SCEP suport is currently under redesign and has not been migrated yet. But if you need a test now, let me know and I can help you get it working with some efforts hopefully.

debian installation
-------------------

To get a test setup working do the following:
1. Install a plain debian squeeze 64bit with at least 2GB disksapce.
2. *Important* - activate the "en_US.utf-8" locale (remove the # from it in /etc/locale.gen and run locale-gen afterwards)

OpenXPKI installation
---------------------

3. Add the archive to your apt list and update
4 Install the server packages

aptitude install libopenxpki-perl openxpki-i18n libopenxpki-client-perl

5. Install the HTML interface

aptitude install libopenxpki-client-html-mason-perl

OpenXPKI deployment (configuration)
-----------------------------------

6. Run the test deployment:

aptitude install openxpki-deployment

Testing your new PKI
--------------------

You will some some perl warnings, this is ok - if everthing works fine, you can now reach the Web GUI un http://yourhost/openxpki/

First step: Login using "External Dynamic" Authentication, Username "admin", Password "CA Operator", and activate the CA key using the choosen password.

You should now be able to request and issue certificates - note, you always need a certiticate approval from another person than the requestor! After approving a request the certificate will be avail immediately.

