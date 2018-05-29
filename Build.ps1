echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
Write-Host "SONARQUBE NOT SELECTED"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
#New-Item -ItemType directory -Path D:\PACKAGE -ErrorAction Stop
echo "Powershell Workspace is ${workspace}"
echo "UserFlag is $env.userFlag"
Copy-Item -Path "D:\Config\*" -Destination "D:\PACKAGES\" -Recurse -Force -ErrorAction Stop
