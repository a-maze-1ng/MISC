REM #########################################
REM change to the 7-zip install directory
REM #########################################

cd C:\Program Files\7-Zip

REM #########################################
REM add files or directory to a .zip file
REM -tzip -> Type of archive -> zip
REM -r -> Recurse subdirectories
REM 7z a -tzip -r "DESTINATION.zip" "SOURCE"
REM #########################################

7z a -tzip -r "C:\Users\XYZ\Desktop\files.zip" "C:\Users\XYZ\Desktop\IMPORTANT_DIR_OR_FILE"

REM #########################################
REM Pause the script to check for possible errors
REM #########################################

pause
