#! /bin/bash

# Nome do projeto
PROJECT_NAME=$1

# Criar ambiente virtual
echo "# Criando ambiente virtual para o projeto $PROJECT_NAME..."
python3 -m venv venv
source venv/bin/activate
echo "# Ambiente virtual criado e ativado."

# Instalar dependências
echo "# Instalando dependências..."
pip install -r requirements.txt # flag -r serve para instalar as dependências dentro de requirements.txt
echo "# Dependências instaladas."
echo "# Ambiente virtual configurado com sucesso."
echo "# Para opções, use: ./helper.sh help"