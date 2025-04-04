#!/bin/bash

ARQUIVO="/Users/marcosmenezes/Desktop/Walter/Relatorio-CL1/v1.1/relatorio-cl1-v1.1.md"

# Cria arquivo temporário
TEMP=$(mktemp)

# Copia até antes da seção 2.1
awk '/### 2.1 /{exit} {print}' "$ARQUIVO" > "$TEMP"

# Adiciona nova versão da seção 2.1
cat <<'INNER_EOF' >> "$TEMP"

### 2.1 Origem das Células-Tronco e Implicações Bioéticas

Os neurônios utilizados no sistema CL1, da Cortical Labs, são derivados de **células-tronco pluripotentes induzidas humanas (hiPSCs)**. Essas células foram originalmente reprogramadas a partir de **fibroblastos dérmicos de prepúcio neonatal humano**, técnica amplamente aceita na comunidade científica por não envolver embriões, reduzindo o conflito ético.

O processo de reprogramação utilizou o sistema hSTEMCCAloxP, que introduz os quatro fatores de Yamanaka (OCT4, SOX2, KLF4, c-MYC), e foi conduzido por pesquisadores do **Murdoch Children’s Research Institute**, instituição reconhecida na Austrália por seus padrões éticos e metodológicos. As linhagens celulares foram transferidas sob **acordo formal de MTA** (Material Transfer Agreement), conforme registrado na publicação revisada por pares:

> Kagan et al. (2022). *In vitro neurons learn and exhibit sentience when embodied in a simulated game-world*. Neuron, 110(24), 4033–4048.  
> 🔗 https://doi.org/10.1016/j.neuron.2022.09.001

Do ponto de vista experimental, os neurônios foram diferenciados a partir das hiPSCs por dois métodos complementares:

- **Dual SMAD inhibition**, que bloqueia sinais de BMP e TGF-β para promover identidade neural;
- **NGN2-induced programming**, com uso de vetores lentivirais e ativação por doxiciclina, permitindo rápida formação de redes funcionais.

Ambos os métodos são validados na literatura científica e foram utilizados para diferentes finalidades na plataforma CL1, que emprega essas culturas neuronais sobre matrizes de microeletrodos (MEAs) para interação com sistemas eletrônicos.

Ainda que a origem e os métodos estejam documentados em artigo científico, não foram encontrados publicamente os **termos de consentimento dos doadores** ou a **aprovação ética detalhada dos comitês responsáveis**, o que exige atenção especial para fins de conformidade com a **Resolução CNS nº 580/2018** no Brasil, sobretudo no caso de futuras parcerias com instituições públicas.

> 🔗 Murdoch Children's Research Institute: https://www.mcri.edu.au  
> 🔗 Resolução CNS 580/2018: https://conselho.saude.gov.br/resolucoes/2018/Reso580.pdf

INNER_EOF

# Adiciona da seção 2.2 em diante
awk '/### 2.2 /{flag=1} flag' "$ARQUIVO" >> "$TEMP"

# Substitui o arquivo original
mv "$TEMP" "$ARQUIVO"

echo "✅ Seção 2.1 atualizada com sucesso no local correto."
