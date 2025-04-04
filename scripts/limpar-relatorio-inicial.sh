#!/bin/bash

BASE="/Users/marcosmenezes/Desktop/Walter/Relatório Inicial sobre o Sistema CL1"

echo "🧹 Iniciando limpeza de: $BASE"

# Remove changelog.md se estiver vazio
if [ -f "$BASE/changelog.md" ] && [ ! -s "$BASE/changelog.md" ]; then
  rm "$BASE/changelog.md"
  echo "🗑️ changelog.md vazio removido."
else
  echo "ℹ️ changelog.md preservado."
fi

# Remove pasta referencias se estiver vazia
if [ -d "$BASE/referencias" ] && [ "$(ls -A \"$BASE/referencias\")" == "" ]; then
  rmdir "$BASE/referencias"
  echo "🗑️ Pasta referencias vazia removida."
else
  echo "ℹ️ Pasta referencias mantida (não está vazia ou não existe)."
fi

# Remove .DS_Store se existir
if [ -f "$BASE/.DS_Store" ]; then
  rm "$BASE/.DS_Store"
  echo "🗑️ .DS_Store removido."
fi

echo "✅ Limpeza concluída."
