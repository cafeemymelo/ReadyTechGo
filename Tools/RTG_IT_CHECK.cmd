@ECHO OFF
ECHO 1. Getting serial number of the device
wmic bios get serialnumber
PAUSE

 
ECHO 2. Generating battery report
powercfg /batteryreport
timeout /t 3 >nul
.\battery-report.html
ECHO.
ECHO 3. Please, connect the device to the internet.
PAUSE 

ECHO.  
ECHO 4. Please, use this website to test the webcam
PAUSE
start https://webcamtests.com/
timeout /t 10 >nul

ECHO.  
ECHO 5. Create a bookmark with the ReadyTechGo website
PAUSE
start https://www.readytechgo.org/
timeout /t 10 >nul

ECHO.    
ECHO "6. Finally, download the antivirus"
PAUSE
start https://www.avast.com/en-gb/download-thank-you.php?product=FAV-ONLINE 
timeout /t 10 >nul

ECHO.   
ECHO "Thanks, you finish the installation process successfully."
ECHO "Deleting the battery report"

DEL battery-report.html
PAUSE
