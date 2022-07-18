# Install powershell modules
Install-Module posh-git
Install-Module Terminal-Icons
Install-Module -Name PSFzf -RequiredVersion 2.4.9

# Install cargo apps
cargo install ripgrep --locked
cargo install bat --locked
