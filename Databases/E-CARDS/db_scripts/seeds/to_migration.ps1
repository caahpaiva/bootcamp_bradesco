#Pegar o diretório atual
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Arquivo saída com todos sql
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

# Verifica se arquivo já existe, se existir deleta
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# pega Conteúdo dos arquivos

$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter *.sql -File | Sort-Object Name

# Concatena Arquivos
foreach($file in $sqlFiles) {
    # Adiciona o conteúdo do arquivo
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile

    # Adiciona a linha "GO" separando os scripts
    "GO" | Out-File -Append -FilePath $outputFile
}

Write-Host "Todos os Arquivos foram combiandos em $outputFile "