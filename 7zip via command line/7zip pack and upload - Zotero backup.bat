:: #########################################
:: set variable
:: #########################################
@echo off
echo set drive letter of the cloude storage (e.g. "G")
set /p cloud_storage=

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
:: example:
:: 7z a -tzip -r "C:\Users\USER\Documents\Backup.zip" "C:\Users\USER\Desktop\"
:: #########################################

7z a -tzip -r "C:\Users\1\Documents\001 - Backup Zotero\Zotero.zip" "C:\Users\1\Zotero\"

:: #########################################
:: copy file to cloud storage folder
:: xcopy
:: /y = Suppresses prompting to confirm that you want to overwrite an existing destination file
:: /s = Copies directories and subdirectories, unless they are empty
:: #########################################


xcopy "C:\Users\1\Documents\001 - Backup Zotero\Zotero.zip" "%cloud_storage%:\Meine Ablage\#003 - Zotero" /s /y


:: #########################################
:: pause the script to check for possible errors
:: #########################################

pause
