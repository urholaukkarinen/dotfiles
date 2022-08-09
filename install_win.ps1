winget install JanDeDobbeleer.OhMyPosh -s winget

echo "Linking nvim configuration"
New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\nvim" -Target "$PWD\nvim"

echo "Linking PowerShell configuration"
New-Item -ItemType SymbolicLink -Path "C:\Users\$env:USERNAME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$PWD\powershell\Microsoft.PowerShell_profile.ps1"

New-Item -ItemType SymbolicLink -Path "C:\Users\$env:USERNAME\.ideavimrc" -Target "$PWD\.ideavimrc"

New-Item -ItemType SymbolicLink -Path "$env:LOCALAPPDATA\oh-my-posh\config.omp.json" -Target "$PWD\oh-my-posh\config.omp.json"

.\install.ps1

