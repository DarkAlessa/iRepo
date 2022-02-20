function Prompt {
    $esc=$([char]27) # ESC or `e in ASCII table
    $promtSymbol = ""
    $currentDir = (Get-Location | Get-Item).Name
    "$esc[38;2;255;255;255;48;2;70;70;70m $env:COMPUTERNAME $esc[0m$esc[38;2;255;255;255;48;2;70;70;70m$promtSymbol$esc[0m$esc[38;2;255;255;255;48;2;70;70;70m Windows $esc[0m$esc[38;2;70;70;70;48;2;255;176;50m$esc[0m$esc[38;2;50;50;50;48;2;255;176;50m $currentDir $esc[0m$esc[38;2;255;176;50m $esc[0m"
}
