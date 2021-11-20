Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Invoke-Expression (&starship init powershell)
