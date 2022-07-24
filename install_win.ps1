winget install JanDeDobbeleer.OhMyPosh -s winget

echo "Linking nvim configuration"
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "$PWD\nvim"

echo "Linking PowerShell configuration"
New-Item -ItemType SymbolicLink -Path "C:\Users\$env:USERNAME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$PWD\powershell\Microsoft.PowerShell_profile.ps1"

.\install.ps1

