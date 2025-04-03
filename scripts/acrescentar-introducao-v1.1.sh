#!/bin/bash

# Caminho correto e seguro
ARQUIVO="$HOME/Desktop/Walter/Relatorio-CL1/v1.1/relatorio-cl1-v1.1.md"

cat <<'INNER_EOF' >> "$ARQUIVO"

## 1. Introdução

O avanço das neurotecnologias e a crescente convergência entre biologia e computação têm gerado sistemas experimentais que desafiam os limites tradicionais da engenharia e da ética. Nesse contexto, a empresa australiana **Cortical Labs** desenvolveu o **CL1**, um sistema biocomputacional que utiliza **neurônios humanos cultivados in vitro** sobre uma matriz de microeletrodos (MEA), conectada a circuitos eletrônicos que interagem em tempo real com a atividade neural. A proposta inaugura uma nova era de **computação viva (wetware computing)**, unindo eletrônica, biologia celular e aprendizado adaptativo em um mesmo dispositivo físico.

Este relatório visa oferecer uma análise inicial do sistema CL1 com foco prioritário em suas **implicações éticas, legais e científicas**, tendo em vista a possibilidade de aplicação institucional no **Instituto de Ciências Biomédicas da USP (ICB/USP)**. Para isso, são consideradas:

- A natureza e a origem dos neurônios utilizados no sistema;
- A conformidade com a legislação nacional (Lei nº 11.105/2005, resolução CNS nº 580/2018) e internacional (Convenção de Oviedo, Recomendações da OECD);
- As implicações éticas no uso de tecidos humanos em sistemas computacionais adaptativos;
- A viabilidade técnica, científica e estratégica da aplicação em projetos de segurança, neurociência e inteligência artificial.

O presente documento está estruturado em seções temáticas, com referências a fontes primárias, documentos oficiais e estudos publicados em periódicos de alto impacto. Espera-se que esta análise possa contribuir para a tomada de decisão institucional sobre a pertinência e viabilidade de futuras parcerias com empresas do setor de computação biológica.

> Mais informações sobre o CL1 podem ser encontradas no site oficial da Cortical Labs:  
> [https://corticallabs.com/cl1.html](https://corticallabs.com/cl1.html)

INNER_EOF

echo "✅ Introdução acrescentada com sucesso a $ARQUIVO"
