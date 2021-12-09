<#
robocopy <source> <destination> /xc /xn /xo /s
    /xc Excludes existing files with the same timestamp, but different file sizes.
    /xn Excludes existing files newer than the copy in the source directory.
    /xo Excludes existing files older than the copy in the source directory.
    /s  Copies subdirectories. This option automatically excludes empty directories.
#>

Clear-Host
$source = @(
    'D:\Pictures\Cute'
    'D:\Pictures\Emily Bloom'
    'D:\Pictures\R'
    'D:\Pictures\Super Star'
    'D:\Pictures\K-POP'
    'C:\Users\nuker\Pictures\Wallpaper'
    'D:\Pictures\HollyWood'
    'D:\My Musics'  
)

$destination = @(
    'G:\Image\Cute'
    'G:\Emily_Bloom'
    'G:\Image\R'
    'G:\Image\Super Star'
    'G:\KPOP\Pix'
    'G:\Image\Wallpaper'
    'G:\Image\HollyWood'
    'G:\My Musics'
)

$counter = 0

$source.foreach({
    if (Test-Path -Path $_) {
        Write-Host "Path $_ exits.!"
    } else {
        Write-Host "Path $_ doesn't exits.!" -ForegroundColor Red
        $counter++
    }
})

$destination.foreach({
    if (Test-Path -Path $_) {
        Write-Host "Path $_ exits.!"
    } else {
        Write-Host "Path $_ doesn't exits.!" -ForegroundColor Red
        $counter++
    }
})

if ($counter -eq 0) {
    for($i=0; $i -lt $source.length; $i++) {
        robocopy $source[$i]    $destination[$i]    /xc /xn /xo /s
    }
} else {
    Write-Host "Exit"
    exit
}