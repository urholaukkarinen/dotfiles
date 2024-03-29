# Set up oh-my-posh
if ($IsMacOS) {
    (@(oh-my-posh init pwsh --config="$env:HOME/.config/oh-my-posh/config.omp.json" --print) -join "`n") | Invoke-Expression
}

if ($IsWindows) {
    (@(oh-my-posh init pwsh --config="$env:LOCALAPPDATA\oh-my-posh\config.omp.json" --print) -join "`n") | Invoke-Expression
}
# Import additional modules
Import-Module posh-git
Import-Module Terminal-Icons
Import-Module PSFzf

# Set up aliases
New-Alias -Name vim nvim

# Override PSReadLine's history search
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' `
                -PSReadlineChordReverseHistory 'Ctrl+r'

Set-PsFzfOption -EnableAliasFuzzyEdit
# Override default tab completion
Set-PSReadlineKeyHandler -Key Tab -Function Complete

# Predictive autocompletion
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# Set additional environment variables
$env:EDITOR = "vim"
$env:FZF_DEFAULT_COMMAND = "rg --files "

If ($IsWindows) {
    # The first line is broken on Windows. Clearing fixes it.
    Clear-Host
}

If ($IsMacOS) {
    $env:PATH += ":$env:HOME/.pyenv/shims"
    $env:PATH += ":$env:HOME/.bin"


    function code ($Path = "") {
        open -a "/Applications/Visual Studio Code.app" $Path
    }
}

function gst { git status }
function v. { vim . }
