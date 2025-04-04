#!/bin/bash

# Caminho base do projeto
BASE="/Users/marcosmenezes/Desktop/Walter/Relatorio-CL1"

# Itens a remover
ITENS_REMOVER=(
  "$BASE/-p"
  "$BASE/v1.1mkdir"
  "$BASE/changelog.md"
)

# Remoção com verificação
for item in "${ITENS_REMOVER[@]}"; do
  if [ -e "$item" ]; then
    rm -rf "$item"
    echo "🗑️ Removido: $item"
  else
    echo "ℹ️ Já não existe: $item"
  fi

done

echo "✅ Diretório limpo com sucesso."
