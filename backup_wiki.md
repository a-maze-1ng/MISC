# Software recommendation
## Must have software
* no warranty for the following links, please always check if the links are still valid!
* I highly recommend to use https://www.heise.de/download/ for downloading software.

Program|Application|Link
|---|---|---|
Everything|Very fast search engine for NTFS partitions|https://www.voidtools.com/
Greenshot|Screenshot software with a good editor|https://getgreenshot.org/
XnView|Easy way to cut images|https://www.xnview.com/de/xnview/
IrfanView|Best picture/image viewer|https://www.irfanview.com/
Inkscape|Image Editor (I like version 1.0.2)|https://inkscape.org/release/1.0.2/platforms/
Notepad++|Best text editor|https://notepad-plus-plus.org/downloads/
Firefox|Browser|https://www.mozilla.org/de/firefox/new/
Thunderbird|Email client|https://www.thunderbird.net/de/
Cryptomator|Free encrypter for cloud storage|https://cryptomator.org/de/
Google Drive|Cloud storage|https://www.google.com/intl/de/drive/download/
VeraCrypt|For encrypting sensitive data|https://www.veracrypt.fr/en/Home.html
Zotero|collect, organize, annotate, cite, and share research|https://www.zotero.org/


## Firefox plugins
Plugin|Application|Link
|---|---|---|
ublock origin|AdBlock|https://addons.mozilla.org/de/firefox/addon/ublock-origin/
HTTPS everywere|Enabling HTTPS encryption automatically on sites that are known to support it|https://addons.mozilla.org/de/firefox/addon/https-everywhere/
Leech Block|Simple productivity tool designed to block those time-wasting sites|https://addons.mozilla.org/en-US/firefox/addon/leechblock-ng/
Simple Translate|Quickly translate selected or typed text on web pages|https://addons.mozilla.org/en-US/firefox/addon/simple-translate/
Zotero|collect, organize, annotate, cite, and share research|https://www.zotero.org/download/

## Thunderbird plugins
Plugin|Application|Link
|---|---|---|
Quicktext| create templates that can be easily inserted into your own emails|https://addons.thunderbird.net/en-US/thunderbird/addon/quicktext/?src=search
BorderColors D| Shows a colorful border around the "New Message" window, so you can tell different identities apart|https://addons.thunderbird.net/en-US/thunderbird/addon/bordercolors-d
Identity Chooser|Identity Chooser helps you to always use the correct identity when composing a new email|https://addons.thunderbird.net/en-US/thunderbird/addon/identity-chooser
Manually sort folders|allows you to manually sort (order) your folders|https://addons.thunderbird.net/de/thunderbird/addon/manually-sort-folders
Minimize on Close|minimize thunderbird instead of closing the app|https://addons.thunderbird.net/de/thunderbird/addon/minimize-on-close
Send later|send email on a specific date/time|https://addons.thunderbird.net/de/thunderbird/addon/send-later-3

# Github related stuff
## How to insert table in github
1. Open Excel and create your table
2. Copy the Excel table to Notepad++
3. Replace all tabs with |  

# How to create a bootable USB-device with the Windows tools
1. start ```diskpart.exe``` via command line, you may want to exit GoogleDrive first!
2. ```list disk```
3. ```select disk <N>```
4. ```lis par``` --> sanity check if the space of the USB-stick is valid
5. ```sel par <N>``` --> select partition, default should be 1
6. ```clean``` --> will delete all content of your selected disc - BE CAREFUL !
7. ```create partition primary```
8. ```format fs=FAT32 LABEL=”Win10-EDU” QUICK OVERRIDE```
9. ```active```
10. ```exit```
11. extract the content of the .iso file with e.g. with 7zip 
