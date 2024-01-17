#!/bin/bash

windows_directory="/mnt/c/Users/blubs/"

# Altera o diretório para o caminho do Windows
cd "$windows_directory"

# Executa o script PowerShell
powershell.exe -File ./EnableLoudness.ps1

# Retorna para o diretório original (opcional)
cd -

# Encerra a instância WSL
kill -9 $$