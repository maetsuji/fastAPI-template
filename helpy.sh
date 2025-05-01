#! /bin/bash

# Nome do projeto
OPTION = $1

if [ -z "$OPTION" ]; then
    echo "# Uso: $0 nome_do_projeto lg (linguagem)"
    exit 1
fi


# inicializar o projeto
echo "# Inicializando o projeto localmente..."
uvicorn app.main:app --reload
echo "# Acesse o projeto em http://localhost:8000/docs"