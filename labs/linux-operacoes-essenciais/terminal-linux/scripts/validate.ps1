$ErrorActionPreference = "Stop"
if (-not (Test-Path "workspace/evidencias/app-anon.log")) {
    throw "Arquivo workspace/evidencias/app-anon.log nao encontrado."
}
$errorFile = Get-ChildItem "workspace/evidencias" -Filter "erros-*.txt" | Select-Object -First 1
if (-not $errorFile) {
    throw "Arquivo erros-*.txt nao encontrado em workspace/evidencias."
}
$matches = Select-String -Path "workspace/evidencias/*" -Pattern "timeout|error|failed" -CaseSensitive:$false
if (-not $matches) {
    throw "Nenhuma evidencia de erro encontrada."
}
Write-Output "OK: evidencias do laboratorio encontradas."
