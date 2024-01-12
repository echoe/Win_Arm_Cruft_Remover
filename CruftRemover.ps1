# Script for uninstalling unnecessary applications from Windows
# Please feel free to add or remove programs based on your own preferences. I just wanted to be able to rerun this in case of Windows update.
# Microsoft.549981C3F5F10 is Cortana.
# This uninstalls Office, OneNote, Teams, ClipChamp, and OneDrive - if you want those on your computer, remove those lines from the script.
# This doesn't uninstall 'Microsoft.XboxSpeechToTextOverlay' so I'm at less risk of breaking Windows.
$PackageList = @("Microsoft.YourPhone",
"Microsoft.Office",
"Microsoft.OneNote",
"Microsoft.Teams",
"Microsoft.549981C3F5F10",
"ClipChamp,ClipChamp",
"Microsoft.MixedReality.Portal",
"Microsoft.OneDriveSync"
"Microsoft.BingWeather",
"Microsoft.BingNews",
"Microsoft.XboxGameCallableUI",
"Microsoft.XboxGameOverlay",
"Microsoft.XboxGamingOverlay",
"Microsoft.Xbox.TCUI",
"Microsoft.XboxIdentityProvider")
ForEach($Package in $PackageList){
    Get-AppxPackage -Name $Package | Remove-AppxPackage
    Write-Output "The application " $Package " has been removed!"
}
Write-Output "The requested applications have been removed!"
