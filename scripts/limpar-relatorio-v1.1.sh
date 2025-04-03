#!/bin/bash

ARQUIVO="$HOME/Desktop/Walter/Relatorio-CL1/v1.1/relatorio-cl1-v1.1.md"

# Limpa o conteúdo do arquivo (mantém o arquivo existente)
> "$ARQUIVO"

echo "🧹 Arquivo $ARQUIVO esvaziado com sucesso. Pronto para construção incremental da versão 1.1."
