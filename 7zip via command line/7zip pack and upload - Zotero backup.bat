:: #########################################
:: user input
:: #########################################
@echo off
echo set drive letter of the cloude storage (e.g. "I")
set /p cloud_storage=
echo:

echo set actual date (e.g. "2023-04-12")
set /p current_date=
echo:

:: #########################################
:: variables
:: #########################################

:: destination within the cloud
set cloud_path=:\Meine Ablage\#003 - Zotero

:: \* at path end to ensure that all data in this folder is packed
set zotero_source=C:\Users\1\Zotero\*

:: pack zotero_source to a zip with current date; save the zip in a buffer location e.g. Documents
set zip_buffer_location=C:\Users\1\Documents\000 - Zotero Backup\%current_date% - Zotero.zip

echo folder %zotero_source% will be packed as .zip
echo .zip will be saved in %zip_buffer_location%
echo .zip will be copied to %cloud_storage%%cloud_path%
echo .zip will be deleted
echo:

:: #########################################
:: choice to abort the script
:: #########################################

echo run the script? j/n
set /p wahl=
if '%wahl%'=='j' goto ja
if '%wahl%'=='n' goto nein

:ja

:: #########################################
:: change to the 7-zip install directory
:: #########################################
cd C:\Program Files\7-Zip

:: #########################################
:: add files or directory to a .zip file
:: a = add to archive
:: e = extract from archive
:: -tzip = Type of archive = zip
:: -r = Recurse subdirectories
:: 7z a -tzip -r "DESTINATION.zip" "SOURCE"
:: #########################################
:: Destination: C:\Users\1\Documents\001 - Backup Zotero\Zotero.zip
:: Source: C:\Users\1\Zotero\* (everything located in this folder)
:: 7z a -tzip "C:\Users\1\Documents\001 - Backup Zotero\Zotero.zip" "C:\Users\1\Zotero\*"
:: #########################################
7z a -tzip "%zip_buffer_location%" "%zotero_source%"

:: #########################################
:: copy file to cloud storage folder
:: xcopy
:: /y = Suppresses prompting to confirm that you want to overwrite an existing destination file
:: /s = Copies directories and subdirectories, unless they are empty
:: #########################################
xcopy "%zip_buffer_location%" "%cloud_storage%%cloud_path%" /s /y

:: #########################################
:: delete old zotero.zip
:: #########################################
del /f "%zip_buffer_location%"
goto ende

:nein
echo Abbruch!
goto ende

:ende
:: #########################################
:: pause the script to check for possible errors
:: #########################################
pause
