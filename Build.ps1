echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
Write-Host "SONARQUBE NOT SELECTED"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
New-Item -ItemType directory -Path D:\PACKAGE -ErrorAction Stop
Copy-Item -Path "D:\Config\*" -Destination "D:\PACKAGES\" -Recurse -Force -ErrorAction Stop
