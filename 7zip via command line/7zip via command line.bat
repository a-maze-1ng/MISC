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
:: pause the script to check for possible errors
:: #########################################

pause
