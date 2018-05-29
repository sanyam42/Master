echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
Write-Host "SONARQUBE NOT SELECTED"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
#New-Item -ItemType directory -Path D:\PACKAGE -ErrorAction Stop
echo "Powershell Workspace is $env:WORKSPACE"
echo "UserFlag is $env:userFlag"
echo "Choice is $env:Choice"
Copy-Item -Path "D:\Config\*" -Destination "D:\PACKAGES\" -Recurse -Force -ErrorAction Stop
