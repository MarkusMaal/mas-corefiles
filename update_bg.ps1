# Replace these variable sources with actual values:
$LockScreenSource = 'C:\mas\bg_login.png'
$BackgroundSource = 'C:\mas\bg_desktop.png'

Function Update-LockAndBackgroundScreen{
    Param(
            [Parameter(Mandatory=$false,Position=0)]
            [ValidateNotNullOrEmpty()]
            [string]$LockScreenSource,
            [Parameter(Mandatory=$false,Position=1)]
            [ValidateNotNullOrEmpty()]
            [string]$BackgroundSource
    )
    Begin {
        $ErrorActionPreference = "Stop"
        $RegKeyPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP"
        $DesktopPath = "DesktopImagePath"
        $DesktopStatus = "DesktopImageStatus"
        $DesktopUrl = "DesktopImageUrl"
        $LockScreenPath = "LockScreenImagePath"
        $LockScreenStatus = "LockScreenImageStatus"
        $LockScreenUrl = "LockScreenImageUrl"
        $StatusValue = "1"
        $DesktopImageValue = "C:\Windows\System32\Desktop.jpg"
        $LockScreenImageValue = "C:\Windows\System32\LockScreen.jpg"
    }
    process{
        if (!$LockScreenSource -and !$BackgroundSource)
        {
            Write-Host "Either LockScreenSource or BackgroundSource must has a value."
        }
        else
        {
            if(!(Test-Path $RegKeyPath)) {
                Write-Host "Creating registry path $($RegKeyPath)."
                New-Item -Path $RegKeyPath -Force | Out-Null
            }
            if ($LockScreenSource) {
                Write-Host "Copy Lock Screen image from $($LockScreenSource) to $($LockScreenImageValue)."
                Copy-Item $LockScreenSource $LockScreenImageValue -Force
                Write-Host "Creating registry entries for Lock Screen"
                New-ItemProperty -Path $RegKeyPath -Name $LockScreenStatus -Value $StatusValue -PropertyType DWORD -Force | Out-Null
                New-ItemProperty -Path $RegKeyPath -Name $LockScreenPath -Value $LockScreenImageValue -PropertyType STRING -Force | Out-Null
                New-ItemProperty -Path $RegKeyPath -Name $LockScreenUrl -Value $LockScreenImageValue -PropertyType STRING -Force | Out-Null
            }
            if ($BackgroundSource) {
                Write-Host "Copy Desktop Background image from $($BackgroundSource) to $($DesktopImageValue)."
                Copy-Item $BackgroundSource $DesktopImageValue -Force
                Write-Host "Creating registry entries for Desktop Background"
                New-ItemProperty -Path $RegKeyPath -Name $DesktopStatus -Value $StatusValue -PropertyType DWORD -Force | Out-Null
                New-ItemProperty -Path $RegKeyPath -Name $DesktopPath -Value $DesktopImageValue -PropertyType STRING -Force | Out-Null
                New-ItemProperty -Path $RegKeyPath -Name $DesktopUrl -Value $DesktopImageValue -PropertyType STRING -Force | Out-Null
            }
            rundll32.exe user32.dll, UpdatePerUserSystemParameters
        }
    }
}


Update-LockAndBackgroundScreen -LockScreenSource $LockScreenSource -BackgroundSource $BackgroundSource
Set-ItemProperty 'HKCU:\Control Panel\Desktop' -Name "WallpaperStyle" -Value 0
Set-ItemProperty 'HKCU:\Control Panel\Desktop' -Name "TileWallpaper" -Value 1
