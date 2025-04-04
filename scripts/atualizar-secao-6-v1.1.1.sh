#!/bin/bash

ARQUIVO="/Users/marcosmenezes/Desktop/Walter/Relatorio-CL1/v1.1.1/relatorio-cl1-v1.1.1.md"

# Cria arquivo temporário
TEMP=$(mktemp)

# Copia até antes da seção 6
awk '/^## 6\. /{exit} {print}' "$ARQUIVO" > "$TEMP"

# Adiciona nova Seção 6
cat <<'INNER_EOF' >> "$TEMP"

## 6. Considerações Finais e Encaminhamentos

O sistema CL1 da Cortical Labs representa um marco relevante no desenvolvimento de plataformas de computação biológica híbrida, utilizando redes de neurônios humanos para interação com sistemas eletrônicos. Seu destaque internacional decorre da sua disponibilidade comercial, da infraestrutura compacta e da possibilidade de integração com algoritmos de aprendizado adaptativo.

Contudo, a análise técnica e regulatória conduzida neste relatório demonstra que **a adoção institucional de tecnologias como o CL1 exige extrema cautela**, especialmente no que diz respeito à:

- **Origem e rastreabilidade das células humanas utilizadas**;
- **Disponibilidade pública de documentos éticos, pareceres e protocolos de consentimento**;
- **Escalabilidade, reprodutibilidade e padronização científica dos experimentos**;
- **Status de proteção intelectual e garantia de acesso aberto a dados técnicos**.

O cenário internacional demonstra que a biocomputação com tecidos humanos encontra-se **em estágio inicial, altamente experimental**, embora projetos como FinalSpark e Brainoware indiquem um interesse crescente por soluções neurais como complemento à inteligência artificial tradicional.

Diante disso, recomenda-se que o Instituto de Ciências Biomédicas (ICB-USP), caso deseje aprofundar sua avaliação sobre o CL1, siga os seguintes encaminhamentos:

1. **Solicitação formal de documentação ética e técnica** à Cortical Labs (incluindo MTA, protocolos e pareceres de comitês de ética);
2. **Consulta ao Comitê de Ética em Pesquisa (CEP/USP)** sobre os requisitos nacionais para uso institucional de sistemas contendo material biológico humano;
3. **Estudo de viabilidade acadêmica em parceria com centros de neurociência e IA da USP**, visando potencial integração experimental sob supervisão ética e técnica;
4. **Análise comparativa contínua** com outros projetos internacionais, avaliando maturidade, abertura científica e sustentabilidade.

O presente relatório tem caráter preliminar, com o objetivo de fornecer base segura e científica para a tomada de decisão, respeitando os princípios de integridade ética e rigor técnico que norteiam a atuação do ICB/USP.

INNER_EOF

# Substitui o arquivo original
mv "$TEMP" "$ARQUIVO"

echo "✅ Seção 6 atualizada com sucesso na versão 1.1.1."
