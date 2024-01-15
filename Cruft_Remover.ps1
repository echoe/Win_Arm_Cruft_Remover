# Script for uninstalling unnecessary applications from Windows 4GB Laptops
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
# Also disabling some programs to free up ram. This disables indexing and superfetch, as well as some tracking.
$ProgramsToDisable=@("sysmain","WSearch","DiagTrack")
ForEach($Program in $ProgramsToDisable){
    set-service -name $Program -startuptype disabled
    Write-Output "The application " $Program " has been disabled from starting!"
}