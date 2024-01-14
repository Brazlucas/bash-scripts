#!/bin/bash

senha_correta="incognitopass"

echo "Faça o login para acessar a pasta"
sleep 0.5
read -s senha_digitada 

if [ "$senha_digitada" == "$senha_correta" ]; then
    # Caminho do diretório no sistema de arquivos do Windows
    windows_directory="/mnt/f/7cadab457ad8d811f134612436daaa5e5914b20dc2502865f714035b0f267680"

    # Abrir o explorador de arquivos do Windows no diretório especificado
    explorer.exe "$(wslpath -w "$windows_directory")"
else
    for i in {1..1000}; do
        echo -n "Senha incorreta. Acesso negado."
        echo
    done
    sleep 1
fi

wsl.exe &
kill -9 $PPID
