$ErrorActionPreference = "Stop"
if (-not (Test-Path "workspace/evidencias")) {
    throw "Diretorio workspace/evidencias nao encontrado."
}
Write-Output "OK: estrutura de evidencias disponivel. Registre suas saidas e conclusoes nessa pasta."
