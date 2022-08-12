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

7z a -tzip -r "C:\Users\XYZ\Desktop\files.zip" "C:\Users\XYZ\Desktop\IMPORTANT_DIR_OR_FILE"

:: #########################################
:: Pause the script to check for possible errors
:: #########################################

pause
