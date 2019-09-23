# SHA1 Converter for Facebook and Android

This little script will return your DEBUG key and your RELEASE key needed for an android Facebook app.
Meant to be run in Linux Mint or derivatives
Requires:

- `xclip` to be installed, so you can get your RELEASE key straight from the clipboard.
- Android Studio for linux with an ordinary install

Usage:
Your 'SHA-1 certificate fingerprint' can be found in your Google Play Console in your app section:

***Release Management>App Signing>App Certificate***

Copy your 'SHA-1 certificate fingerprint' using the button to the right from your Play Console.
The script expects the 'SHA-1 certificate fingerprint' as only argument.

`./facebook_sha1_converter.sh SHA1: XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX`
