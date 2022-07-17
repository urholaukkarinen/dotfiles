# Create symbolic links

# NVim
echo "Linking nvim configuration"
New-Item -ItemType SymbolicLink -Path "C:\Users\$env:USERNAME\AppData\Local\nvim" -Target "$PWD\nvim"

echo "Linking PowerShell configuration"
New-Item -ItemType SymbolicLink -Path "C:\Users\$env:USERNAME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$PWD\powershell\Microsoft.PowerShell_profile.ps1"
