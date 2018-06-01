echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
Write-Host "SONARQUBE NOT SELECTED"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
New-Item -ItemType directory -Path D:\PACKAGE -ErrorAction SilentlyContinue
echo "Powershell Workspace is $env:WORKSPACE"
echo "UserFlag is $env:userFlag"
echo "Choice is $env:Choice"
echo "Build No.is $env:BUILD_NUMBER" 

if ($? -eq "True")
{echo "Exiting 1"  ; exit 1
}
else
   {echo "Not exiting 1"}

Copy-Item -Path "D:\Config\*" -Destination "D:\PACKAGES\" -Recurse -Force -ErrorAction Stop
