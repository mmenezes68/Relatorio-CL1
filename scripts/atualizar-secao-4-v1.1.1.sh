#!/bin/bash

ARQUIVO="/Users/marcosmenezes/Desktop/Walter/Relatorio-CL1/v1.1.1/relatorio-cl1-v1.1.1.md"

# Cria arquivo temporário
TEMP=$(mktemp)

# Copia até antes da seção 4
awk '/^## 4\. /{exit} {print}' "$ARQUIVO" > "$TEMP"

# Adiciona nova Seção 4
cat <<'INNER_EOF' >> "$TEMP"

## 4. Aplicações Científicas e Desafios Técnicos

A plataforma CL1 da Cortical Labs representa um avanço pioneiro na integração de culturas neuronais humanas com interfaces eletrônicas para fins de computação e pesquisa experimental. Sua arquitetura permite explorar princípios da neuroplasticidade, da codificação sensório-motora e da adaptação sináptica, posicionando-se como uma ferramenta científica emergente para modelagem e testes em ambientes controlados.

### 4.1 Aplicações Experimentais e Científicas

Em sua publicação seminal, Kagan et al. (2022) demonstraram que neurônios cultivados no CL1 foram capazes de aprender a jogar uma versão simplificada do jogo **Pong**, por meio de reforço adaptativo baseado em estímulos elétricos. A aprendizagem foi evidenciada pelo aumento da acurácia ao longo das sessões de treino, mesmo na ausência de um sistema nervoso completo, indicando formas básicas de plasticidade funcional.

Além da simulação sensório-motora, as redes neurais cultivadas foram utilizadas para:

- **Testar respostas a entradas visuais sintéticas**;
- **Modelar aprendizado não supervisionado**;
- **Estudar características biofísicas de rede, como oscilação e modulação de sinal**;
- **Comparar padrões de ativação sob diferentes regimes de estímulo e ruído**.

A Cortical Labs também afirma que a plataforma está sendo empregada em testes de algoritmos de inteligência artificial híbrida, com uso de machine learning sobre sinais biológicos.

> 🔗 Kagan et al., 2022 – Neuron: https://doi.org/10.1016/j.neuron.2022.09.001  
> 🔗 Cortical Labs – Pong Demo: https://corticallabs.com

### 4.2 Limitações Técnicas Atuais

Apesar de suas capacidades inovadoras, o CL1 ainda enfrenta desafios técnicos significativos que limitam sua adoção em larga escala:

- **Estabilidade das culturas**: a longevidade das culturas neuronais ainda é dependente de supervisão técnica e condições ambientais delicadas;
- **Baixa densidade computacional**: o número de neurônios por unidade ainda está distante de redes complexas, limitando seu uso para tarefas simples;
- **Despadronização experimental**: a resposta neural pode variar entre culturas e sessões, exigindo protocolos sofisticados de análise;
- **Escalabilidade limitada**: a replicação de unidades CL1 é atualmente restrita a ambientes com suporte biológico;
- **Interpretação dos dados**: os sinais biológicos demandam algoritmos específicos para detecção de padrões, introduzindo variabilidade e dependência de engenharia computacional especializada.

#### 4.2.1 Dependência de Insumos Biológicos e Infraestrutura

A operação do CL1 requer insumos biológicos de alta especificidade e qualidade. Os neurônios são derivados de **células-tronco pluripotentes induzidas (hiPSCs)**, reprogramadas a partir de **fibroblastos de prepúcio neonatal humano**, conforme descrito por Kagan et al. (2022). Os protocolos de diferenciação incluíram **Dual SMAD Inhibition (DSI)** e **NGN2-induction**, que exigem meios de cultura especializados, como:

- Neurobasal Medium + B27 + Glutamax;
- Antibióticos e aditivos neurotróficos;
- Sistema de cultura com controle de temperatura, gás e fluidez.

Ainda que o artigo científico ofereça transparência quanto à linhagem celular e aos métodos utilizados, **a empresa não disponibiliza os protocolos completos, os documentos de consentimento nem os dados técnicos de suporte biológico**, tornando a replicação limitada a ambientes autorizados ou parceiros institucionais.

> 🔗 Kagan et al., 2022 – Neuron: https://doi.org/10.1016/j.neuron.2022.09.001  
> 🔗 Murdoch Children's Research Institute: https://www.mcri.edu.au  
> 🔗 Cortical Labs – Documentação: https://corticallabs.com/cl1.html

INNER_EOF

# Adiciona da seção 5 em diante, se houver
awk '/^## 5\. /{flag=1} flag' "$ARQUIVO" >> "$TEMP"

# Substitui o arquivo original
mv "$TEMP" "$ARQUIVO"

echo "✅ Seção 4 atualizada com sucesso na versão 1.1.1."
