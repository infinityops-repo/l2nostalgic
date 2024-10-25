#!/bin/bash

# Caminho para o diretório atual
DIR="$(pwd)"

# Verifica se o LoginServer.sh existe e tem permissão de execução
if [ -f "$DIR/LoginServer.sh" ]; then
    chmod +x "$DIR/LoginServer.sh"
    echo "Executando LoginServer.sh..."
    "$DIR/LoginServer.sh"
else
    echo "Erro: LoginServer.sh não encontrado no diretório atual."
fi

# Verifica se o RegisterGameServer.sh existe e tem permissão de execução
if [ -f "$DIR/RegisterGameServer.sh" ]; then
    chmod +x "$DIR/RegisterGameServer.sh"
    echo "Executando RegisterGameServer.sh..."
    "$DIR/RegisterGameServer.sh"
else
    echo "Erro: RegisterGameServer.sh não encontrado no diretório atual."
fi

