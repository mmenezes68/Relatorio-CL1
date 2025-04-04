#!/bin/bash

ARQUIVO="/Users/marcosmenezes/Desktop/Walter/Relatorio-CL1/v1.1.1/changelog.md"

cat <<'INNER_EOF' > "$ARQUIVO"
# CHANGELOG – Relatório CL1

## Versão 1.1.1 – 3 de abril de 2025 · São Paulo, SP

### ✅ Melhorias Implementadas
- Reformulação completa da introdução, com cabeçalho institucional e escopo ampliado;
- Reestruturação da Seção 2 com base em novos artigos e protocolos de origem celular;
- Seção 3 revisada com dados técnicos e links oficiais sobre o CL1 e MEA;
- Nova Seção 4 detalhando aplicações e desafios, incluindo insumos biológicos utilizados;
- Inclusão da Seção 5 com comparação internacional entre projetos similares (FinalSpark, Brainoware etc.);
- Seção 6 com considerações institucionais e encaminhamentos específicos para o ICB/USP;
- Referências expandidas e atualizadas com base em publicações científicas de 2022 a 2024.

### 🔍 Avaliação
A versão 1.1.1 representa a primeira análise ampla e institucionalmente aplicável sobre o uso de sistemas de biocomputação com neurônios humanos. É adequada para subsidiar decisões internas no ICB/USP.

INNER_EOF

echo "✅ changelog.md atualizado com sucesso."
