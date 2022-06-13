$secretsFile = "secrets.ps1"

function Validate-SecretsFile {
    if (!(Test-Path "$PSScriptRoot\$secretsFile")) {
        Write-Host "You need a valid CurseForge API Token in a $secretsFile file" -ForegroundColor Red
        Write-Host "Creating $secretsFile" -ForegroundColor Cyan
        New-Item -Path $PSScriptRoot -ItemType File -Name $secretsFile -Value "# To generate an API token go to: https://authors.curseforge.com/account/api-tokens `n $CURSEFORGE_TOKEN = `"your-curseforge-token-here`""
    }
}

. "$PSScriptRoot\$secretsFile"

curl.exe -H X-Api-Token:$CURSEFORGE_TOKEN https://minecraft.curseforge.com/api/game/versions >> game-versions.json
