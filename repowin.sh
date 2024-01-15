#!/bin/bash

windows_directory="C:\\Users\\blubs\\OneDrive\\Área de Trabalho\\Repo"

powershell.exe -Command "cd '$windows_directory'; Start-Process powershell.exe"

wsl.exe &
kill -9 $PPID