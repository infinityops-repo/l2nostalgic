#!/bin/bash

# Definindo as variáveis de conexão
USER="root"
PASSWORD=""
HOST="localhost"
DATABASE="lineage2"  # Substitua pelo nome do banco de dados desejado

# Caminho da pasta onde estão os arquivos .sql
SQL_DIR="/home/db_installer/sql/game"

# Verifica se a pasta /sql existe
if [ ! -d "$SQL_DIR" ]; then
    echo "Diretório $SQL_DIR não encontrado."
    exit 1
fi

# Loop pelos arquivos .sql no diretório /sql
for sql_file in "$SQL_DIR"/*.sql; do
    if [ -f "$sql_file" ]; then
        echo "Importando $sql_file para o banco de dados $DATABASE..."
        mysql -u "$USER" -p"$PASSWORD" -h "$HOST" "$DATABASE" < "$sql_file"
        
        if [ $? -eq 0 ]; then
            echo "Arquivo $sql_file importado com sucesso."
        else
            echo "Erro ao importar o arquivo $sql_file."
        fi
    else
        echo "Nenhum arquivo .sql encontrado em $SQL_DIR."
    fi
done

echo "Importação concluída."

