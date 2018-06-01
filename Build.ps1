 param( 
        
        [parameter(Mandatory=$true,Position=0)] 
        [String] 
        [ValidateNotNullOrEmpty()] 
        USER_flag
        
    ) 

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
Write-Host "SONARQUBE NOT SELECTED"
echo "userflag is $USER_flag"
echo "userflag is $env:userFlag"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
New-Item -ItemType directory -Path D:\PACKAGE -ErrorAction SilentlyContinue
echo "Powershell Workspace is $env:WORKSPACE"
echo "UserFlag is $env:userFlag"
echo "Choice is $env:Choice"
echo "Build No.is $env:BUILD_NUMBER" 
$GCD =
{
$Ch = $args[0]
powershell -file D:\Powershell\GARM_Deploy.ps1 $Ch 
}

Invoke-Command -ScriptBlock $GCD -ArgumentList $env:Choice

if ($? -eq "True")
{echo "Exiting 1"  ; exit 1
}
echo "Not exiting 1"

Copy-Item -Path "D:\Config\*" -Destination "D:\PACKAGES\" -Recurse -Force -ErrorAction Stop
