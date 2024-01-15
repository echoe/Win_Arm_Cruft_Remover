NOTE: I found this:
https://github.com/Raphire/Win11Debloat
If I wasn't me, I would say that's a better option. But YMMV. I'll keep this up for posterity, with the changes I made before finding that as well.

Old README below:
I wrote this script because I bought a 4GB laptop and wanted it to be usable and to be able to make it usable again in a repeatable way.
Please feel free to add or remove programs based on your own preferences when you run this!
Some inspiration taken from tiny11: https://github.com/ntdevlabs/tiny11builder

To see current installed programs on your machine, run this one-liner in PowerShell Admin:
Get-AppxPackage | SELECT Name

Microsoft.549981C3F5F10 is Cortana.

This script, bluntly, just uninstalls a bunch of stuff.
If you like stuff the script removes, feel free to remove it from the script before you run it.
Things that I am not uninstalling because Windows errors at me, since I am running this in userspace and not adminspace:
"Microsoft.XboxSpeechToTextOverlay",
"Microsoft.XboxGameCallableUI",
"Microsoft.Windows.PeopleExperienceHost",
"Microsoft.Windows.NarratorQuickStart",
"Microsoft.Windows.ParentalControls",

I have run this on my personal laptop and it's helped speed a lot, but this could possibly break your install! No promises!!
