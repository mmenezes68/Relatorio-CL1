#!/bin/bash

ARQUIVO="/Users/marcosmenezes/Desktop/Walter/Relatorio-CL1/v1.1.1/relatorio-cl1-v1.1.1.md"

# Cria arquivo temporário
TEMP=$(mktemp)

# Copia até antes da seção 2
awk '/^## 2\. /{exit} {print}' "$ARQUIVO" > "$TEMP"

# Adiciona nova Seção 2
cat <<'INNER_EOF' >> "$TEMP"

## 2. Aspectos Éticos, Legais e Regulatórios

A utilização de neurônios humanos em sistemas computacionais representa um avanço científico e tecnológico sem precedentes, exigindo, por outro lado, um alto nível de responsabilidade ética e regulatória. Esta seção apresenta uma análise da origem das células utilizadas no sistema CL1 e da conformidade desse uso com marcos legais nacionais e internacionais, fundamentais para a avaliação institucional da viabilidade de cooperação com a tecnologia em questão.

### 2.1 Origem das Células-Tronco e Implicações Bioéticas

O sistema CL1 utiliza neurônios humanos derivados de células-tronco pluripotentes induzidas (hiPSCs), reprogramadas a partir de fibroblastos de prepúcio neonatal humano. O procedimento foi realizado pelo Murdoch Children’s Research Institute (Austrália), segundo métodos padronizados baseados nos fatores de Yamanaka (OCT4, SOX2, KLF4 e c-MYC), utilizando o sistema hSTEMCCAloxP.

As linhagens celulares foram disponibilizadas à Cortical Labs mediante acordo de transferência de material (MTA), como descrito em artigo publicado na revista *Neuron* (Kagan et al., 2022). A diferenciação neuronal ocorreu por dois métodos: Dual SMAD inhibition (DSI) e indução por NGN2, ambos amplamente utilizados em neurociência experimental.

Ainda que o artigo mencione a origem das células e os métodos de diferenciação, **não foram disponibilizados publicamente os termos de consentimento dos doadores, nem os pareceres dos comitês de ética correspondentes**. Esta ausência documental exige especial atenção em projetos conduzidos por instituições públicas brasileiras, cujas normas exigem rastreabilidade ética e jurídica total do material biológico humano.

> 🔗 Kagan et al., 2022. *In vitro neurons learn and exhibit sentience when embodied in a simulated game-world*. Neuron 110(24), 4033–4048. https://doi.org/10.1016/j.neuron.2022.09.001  
> 🔗 Murdoch Children's Research Institute: https://www.mcri.edu.au

### 2.2 Legislação Brasileira e Convenções Internacionais

No Brasil, o uso de células humanas em pesquisa é regulamentado principalmente pela:

- **Lei nº 11.105/2005** (Lei de Biossegurança);
- **Resolução CNS nº 580/2018**, do Conselho Nacional de Saúde;
- **Diretrizes operacionais do CONEP/CNS**.

Essas normas estabelecem critérios para o uso ético e seguro de material biológico humano, incluindo:

- Consentimento livre e esclarecido;
- Aprovação prévia em comitê de ética (CEP/CONEP);
- Garantia de rastreabilidade e anonimato dos doadores.

No contexto internacional:

- **Estados Unidos**: a pesquisa é regida pela *Common Rule* (45 CFR 46) e pela FDA (21 CFR Part 50 e 56), com ênfase em consentimento e comitês IRB.
- **Austrália**: aplica-se a *National Statement on Ethical Conduct in Human Research* (NHMRC, 2007, atualizado em 2018), documento que guia toda a conduta ética em pesquisa com seres humanos.
- **Europa**: a **Convenção de Oviedo** (1997) estabelece princípios bioéticos amplamente adotados, embora o Brasil **não seja signatário**.

> 🔗 Lei nº 11.105/2005: https://www.planalto.gov.br/ccivil_03/_ato2004-2006/2005/lei/l11105.htm  
> 🔗 Resolução CNS nº 580/2018: https://conselho.saude.gov.br/resolucoes/2018/Reso580.pdf  
> 🔗 NHMRC (Austrália): https://www.nhmrc.gov.au/about-us/publications/national-statement-ethical-conduct-human-research-2007-updated-2018  
> 🔗 Common Rule (EUA): https://www.ecfr.gov/current/title-45/subtitle-A/subchapter-A/part-46  
> 🔗 Oviedo Convention: https://www.coe.int/en/web/conventions/full-list?module=treaty-detail&treatynum=164

Considerando esses elementos, **qualquer futura cooperação do ICB/USP com tecnologias como o CL1 deverá estar condicionada à comprovação documental da conformidade ética e legal** do material biológico utilizado, em consonância com a legislação brasileira.

INNER_EOF

# Adiciona da seção 3 em diante, se houver
awk '/^## 3\. /{flag=1} flag' "$ARQUIVO" >> "$TEMP"

# Substitui o arquivo original
mv "$TEMP" "$ARQUIVO"

echo "✅ Seção 2 atualizada com sucesso na versão 1.1.1."
