# jsnapy-tests
Test and support files for Juniper/jsnapy

Make sure your jsnapy has fix#399 if using the test_route.yml

Tests where tested on QFX5120.  Some of these test may not work on other platforms.  For example, test_chassis.yml has tests that use "show chassis routing-engine" or "sh system uptime".  The returned XML here is different for a Multi-RE system vs a single (SRX) so fails may occue on wrong platforms.  Also, the test_mpls.yml issues comands not supported on some platforms (like the EX4300).  I plan on making adjustments to make this explicit with seperate yml files to cover this, but not there yet.

snap.py is a simple bash wrapper to call jsnap and prompt for username/password and some other options.
