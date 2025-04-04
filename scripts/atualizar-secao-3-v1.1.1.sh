#!/bin/bash

ARQUIVO="/Users/marcosmenezes/Desktop/Walter/Relatorio-CL1/v1.1.1/relatorio-cl1-v1.1.1.md"

# Cria arquivo temporário
TEMP=$(mktemp)

# Copia até antes da seção 3
awk '/^## 3\. /{exit} {print}' "$ARQUIVO" > "$TEMP"

# Adiciona nova Seção 3
cat <<'INNER_EOF' >> "$TEMP"

## 3. Documentação Técnica e Patentes

Esta seção apresenta as informações técnicas oficiais disponíveis sobre o sistema CL1 da Cortical Labs, com foco na arquitetura do equipamento, suas capacidades computacionais, opções de acesso remoto e a situação atual em termos de registro de propriedade intelectual.

### 3.1 Arquitetura Técnica do CL1

O CL1 é uma plataforma autônoma de computação biológica híbrida, composta por uma matriz de microeletrodos (Multi-Electrode Array – MEA) sobre a qual neurônios humanos vivos são cultivados, permitindo comunicação bidirecional com circuitos eletrônicos. O sistema físico possui as seguintes características:

- **Unidade independente**, com suporte de vida integrado (controle de temperatura, bombas, gases, fluido);
- **Interface MEA de 1.024 eletrodos**, com capacidade de estímulo e leitura de sinais neuronais em tempo real;
- **Sistema operacional biológico (biOS)**, desenvolvido pela Cortical Labs, que interage com as redes neurais cultivadas;
- **Não requer sala limpa ou estrutura laboratorial especializada** para operação;
- **Conectividade com periféricos externos (USB, câmeras, sensores etc.)**;
- **Capacidade de manutenção das culturas neuronais por até seis meses** com supervisão automatizada.

Além do hardware físico, a Cortical Labs disponibiliza o **Cortical Cloud**, uma plataforma de acesso remoto que permite a pesquisadores executarem algoritmos diretamente em redes neurais cultivadas hospedadas nos laboratórios da empresa. A conexão se dá via browser, sem a necessidade de instalação de software especializado.

> 🔗 Fonte técnica: https://corticallabs.com/cl1.html

### 3.2 Situação de Patentes

Até o momento da redação desta versão, não foi identificada publicação de patente diretamente registrada sob o nome “CL1” no banco de dados da Organização Mundial da Propriedade Intelectual (WIPO) ou no IP Australia. A ausência de registros públicos pode indicar uma das seguintes situações:

- A patente ainda se encontra sob análise (fase de confidencialidade);
- A tecnologia está sendo protegida sob **segredo industrial**, estratégia comum em fases iniciais de desenvolvimento;
- Os componentes estão cobertos por **patentes com escopo mais genérico**, como biointerfaces neurais ou plataformas de estimulação elétrica.

É relevante notar que o artigo de Kagan et al. (2022) descreve diversos detalhes técnicos e experimentais da plataforma CL1, o que indica uma possível estratégia de **divulgação científica sem registro imediato de patente**. Embora legítima, essa abordagem limita a proteção jurídica da propriedade intelectual, o que deve ser avaliado com atenção por instituições que pretendam interagir com a tecnologia.

> 🔗 Busca por patentes (WIPO): https://patentscope.wipo.int  
> 🔗 IP Australia: https://www.ipaustralia.gov.au  
> 🔗 Kagan et al., 2022: https://doi.org/10.1016/j.neuron.2022.09.001

INNER_EOF

# Adiciona da seção 4 em diante, se houver
awk '/^## 4\. /{flag=1} flag' "$ARQUIVO" >> "$TEMP"

# Substitui o arquivo original
mv "$TEMP" "$ARQUIVO"

echo "✅ Seção 3 atualizada com sucesso na versão 1.1.1."
