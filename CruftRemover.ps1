# Script for uninstalling unnecessary applications from Windows on ARM 4GB laptops
# Please feel free to add or remove programs based on your own preferences.
# Some inspiration taken from tiny11: https://github.com/ntdevlabs/tiny11builder
# To see current installed programs on your machine, run this one-liner in PowerShell Admin:
# Get-AppxPackage | SELECT Name
# Microsoft.549981C3F5F10 is Cortana.
# This uninstalls a bunch of stuff. If you like stuff I am removing, feel free to remove it from the script before you run it.
# Things that I am not uninstalling because Windows errors at me:
# "Microsoft.XboxSpeechToTextOverlay","Microsoft.XboxGameCallableUI"
# I am actively using this on my laptop but this could possibly break your install maybe! No promises!
$PackageList = @("Microsoft.YourPhone",
"Microsoft.GetHelp",
"Microsoft.GetStarted",
"Microsoft.Todos",
"Microsoft.People",
"MicrosoftCorporationII.QuickAssist",
"Microsoft.Office",
"Microsoft.OneNote",
"Microsoft.Teams",
"Microsoft.549981C3F5F10",
"ClipChamp,ClipChamp",
"Microsoft.MixedReality.Portal",
"Microsoft.OneDriveSync"
"Microsoft.BingWeather",
"Microsoft.BingNews",
"Microsoft.XboxGameOverlay",
"Microsoft.XboxGamingOverlay",
"Microsoft.Xbox.TCUI",
"Microsoft.XboxIdentityProvider")
ForEach($Package in $PackageList){
    Get-AppxPackage -Name $Package | Remove-AppxPackage
    Write-Output "The application " $Package " has been removed!"
}
Write-Output "The requested applications have been removed!"
