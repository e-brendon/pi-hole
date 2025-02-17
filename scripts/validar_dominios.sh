
#!/bin/bash

set -e

DIR_LISTAS="./lists"
DIR_VALIDADO="./lists/validadas"
mkdir -p "$DIR_VALIDADO"

# Função para validar domínios
validar_dominio() {
    local dominio="$1"
    # Usa dig pra checar se o domínio resolve
    if dig +short "$dominio" > /dev/null; then
        echo "$dominio"
    else
        echo "INVALIDO: $dominio" >&2
    fi
}

# Processa cada arquivo de lista
for lista in "$DIR_LISTAS"/*.txt; do
    nome_lista=$(basename "$lista")
    lista_validada="$DIR_VALIDADO/$nome_lista"

    echo "Validando $nome_lista..."

    # Lê, remove linhas vazias, remove comentários e valida
    cat "$lista" | sed '/^$/d' | sed '/^#/d' | sort -u | while read -r dominio; do
        # Valida domínio e escreve na lista validada
        validar_dominio "$dominio"
    done | sort -u > "$lista_validada"

    echo "Lista validada gerada: $lista_validada"
done

echo "Validação concluída!"