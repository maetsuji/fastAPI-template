#! /bin/bash

# Gerenciador de tarefas estilo npm/yarn
function task_manager() {
    case $1 in
        lint)
            echo "# Executando lint..."
            flake8 app
            ;;
        test)
            echo "# Executando testes..."
            pytest
            ;;
        run)
            echo "# Executando o projeto localmente..."
            uvicorn app.main:app --reload
            echo "# Acesse o projeto em http://localhost:8000/docs"
            ;;
        build)
            echo "# Construindo o projeto..."
            source venv/bin/activate
            echo "# Para desativar o ambiente virtual, use: deactivate"
            ;;
        help)
            echo "# Comandos disponíveis:"
            echo "# lint - Executa o linting do código"
            echo "# test - Executa os testes"
            echo "# run - Executa o projeto localmente"
            echo "# build - Constrói o projeto"
            echo "# help - Mostra esta mensagem de ajuda"
            ;;
        *)
            echo "# Comando desconhecido. Use: lint, test, run, build, ou help"
            ;;
    esac
}

# Verifica se o segundo argumento é um comando do gerenciador de tarefas
if [ ! -z "$2" ]; then
    task_manager $2
fi