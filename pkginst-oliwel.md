HOWTO install the OpenXPKI packages on a pristine installation of debian squeeze
================================================================================

Written by Oliver Welter.

OpenXPKI packages
-----------------

The packages are available at http://packages.openxpki.org/debian

Limitations
-----------

The packages feature a new (internal) certification interface, therefore there are some limitations:

* LDAP publication is working but needs some manual interaction (relies on the new workflow engine which is still under development) 

* SCEP suport is currently under redesign and has not been migrated yet.

debian installation
-------------------

To get a test setup working do the following:

1. Install a plain debian squeeze 64bit with at least 2GB disksapce.

2. *Important* - activate the "en_US.utf-8" locale (remove the `#` sign 
at the start of the line  in /etc/locale.gen and run `locale-gen` afterwards).

OpenXPKI installation and deployment (configuration)
----------------------------------------------------

1. Add the archive to your apt list and update:

	`wget -O /etc/apt/sources.list.d/openxpki.list http://packages.openxpki.org/debian/openxpki.list`

	`aptitude update`

2. Install the server packages:

	`aptitude install libopenxpki-perl openxpki-i18n libopenxpki-client-perl`

3. Install the HTML interface:

	`aptitude install libopenxpki-client-html-mason-perl`

4. Run the test deployment:

	`aptitude install openxpki-deployment`

	This will guide you through the deployment and configuration
	of OpenXPKI and it's dependencies.

Testing your new PKI
--------------------

You will see some perl warnings, this is ok - if everthing works fine, 
you can now reach the Web GUI on http://yourhost/openxpki/ .

First step: Login using "External Dynamic" Authentication, 
Username "admin", Password "CA Operator", and activate the CA key 
using the choosen password.

You should now be able to request and issue certificates. Please note that
you always need a certiticate approval from different  person than 
the requestor. After approving a request the certificate will be 
available immediately.


Bugs / Support
--------------

If you have trouble with the packages, contact debian@openxpki.org

For any other support, please use our mailinglists 
openxpki-users@lists.sourceforge.net / openxpki-devel@lists.sourceforge.net
 