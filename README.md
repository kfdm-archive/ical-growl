Growl notifications from iCal Events
====================================
Script to simplify setting up growl notifications from iCal

Install
-------
Add the email address `growl@localhost.local` to your personal Address Book entry.

From the console run `rake install`

Usage
-----
When creating an alert in iCal, use the email alarm and set the address to `growl@localhost.local`

Uninstall
---------
Run `rake uninstall`


Alternate Setup
---------
Run `rake search` and the script will attempt to find your default email address and insert that into the applescript. You can then install as usual.

References
----------
http://hints.macworld.com/article.php?story=20060730183408381

http://subtlegradient.com/articles/2006/07/21/growl-notifications-for-ical-how-to
