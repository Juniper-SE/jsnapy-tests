# jsnapy-tests
Test and support files for Juniper/jsnapy

Make sure your jsnapy has fix #399 if using the test_route.yml

Tests were tested on QFX5120, EX4300, EX4200, vSRX3

I tried to organize these by using the test_commandBranch format so we can minimize the number of RPC calls where possible and provide a layout for growth.

Some of these test may not work or need editing on varying platforms/versions.  
I have tried to make these as universal as possible (for example single and multi-route-engine systems) but using the "ignore-null: True" so some test get skipped if values don't exist in the XML.

Running test for protocols that are not running or not supported on a platform should just report a fail on that test.  I have tested the best I could to avoid Exceptions but YMMV.

snap.py is a simple bash wrapper to call jsnap and prompt for username/password and some other options.

I welcome comments and contributions to the repo.
