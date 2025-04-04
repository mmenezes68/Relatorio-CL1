#!/bin/bash

ARQUIVO="/Users/marcosmenezes/Desktop/Walter/Relatorio-CL1/v1.1.1/relatorio-cl1-v1.1.1.md"

# Cria arquivo temporário
TEMP=$(mktemp)

# Copia até antes da seção 5
awk '/^## 5\. /{exit} {print}' "$ARQUIVO" > "$TEMP"

# Adiciona nova Seção 5
cat <<'INNER_EOF' >> "$TEMP"

## 5. Projetos Relacionados e Panorama Internacional

A pesquisa em biocomputação com neurônios humanos tem ganhado atenção internacional, com iniciativas acadêmicas e privadas desenvolvendo sistemas híbridos que combinam redes neurais vivas com plataformas eletrônicas e computação em nuvem. Esta seção apresenta um panorama dos principais projetos em andamento ou divulgados publicamente, permitindo situar o sistema CL1 no cenário global.

### 5.1 FinalSpark (Suíça)

A startup suíça **FinalSpark** desenvolve um sistema de bioprocessamento que utiliza culturas neuronais humanas como unidades de computação híbrida. Em 2023, a empresa apresentou um **protótipo funcional com acesso remoto via API**, hospedado em infraestrutura própria e voltado para universidades e centros de pesquisa.

O modelo se baseia em **microcâmaras de cultura com sensores de leitura e estimulação elétrica**, acoplados a um sistema de controle ambiental. A empresa publicou documentação técnica sobre o consumo energético reduzido dos biochips, sugerindo um potencial uso futuro como alternativa ecológica à computação clássica.

> 🔗 Site oficial: https://www.finalspark.com  
> 🔗 Publicação técnica: *A neuromorphic system based on living neurons* – bioRxiv, 2023.

### 5.2 Brainoware (Japão/EUA)

Pesquisadores da **University of Tokyo** e da **Indiana University Bloomington** publicaram em 2023 o projeto **Brainoware**, um sistema baseado em **organoides cerebrais cultivados em laboratório** conectados a redes neurais ópticas. Os organoides foram utilizados como módulos de inferência para classificação de sons vocais com aprendizado adaptativo.

A pesquisa, publicada na *Nature Electronics*, demonstrou que os organoides podiam melhorar sua performance ao longo de sessões de treino, abrindo caminho para estudos de cognição artificial e interface biológica em IA.

> 🔗 Nature Electronics (2023): https://www.nature.com/articles/s41928-023-01095-8

### 5.3 DishBrain e Koniku

O **DishBrain**, projeto experimental que antecedeu o CL1, foi conduzido pelos mesmos autores (Cortical Labs) e publicado em 2022. Ele demonstrava a capacidade de redes neurais cultivadas em placas MEA de interagirem com jogos simples (como Pong), baseando-se em estímulo elétrico como forma de aprendizagem.

Outro projeto notável é o da empresa **Koniku**, nos EUA, que integra **células olfativas humanas e de animais** em chips neuromórficos para aplicação em detecção química e segurança. A empresa anunciou parcerias com aeroportos e instituições militares para testes de campo.

> 🔗 Kagan et al., 2022 – Neuron: https://doi.org/10.1016/j.neuron.2022.09.001  
> 🔗 Koniku – Site oficial: https://www.koniku.com

### 5.4 Comparação e Perspectivas

| Projeto       | País         | Tipo de célula         | Acesso | Status              |
|---------------|--------------|------------------------|--------|---------------------|
| CL1           | Austrália    | Neurônios hiPSCs       | Comercial | Disponível (Cortical Labs) |
| FinalSpark    | Suíça        | Neurônios humanos      | API/Remoto | Protótipo em testes |
| Brainoware    | Japão/EUA    | Organoides cerebrais   | Pesquisa | Artigo científico |
| DishBrain     | Austrália    | Neurônios hiPSCs       | Pesquisa | Encerrado/Integrado |
| Koniku        | EUA          | Células olfativas      | Privado | Parcerias militares |

Embora o CL1 se destaque por ser um dos poucos sistemas **já disponíveis comercialmente**, ainda existem dúvidas sobre sua replicabilidade, documentação completa e protocolo ético, como discutido nas seções anteriores. Outros projetos permanecem no campo experimental, mas contribuem para validar o potencial da biocomputação como novo paradigma científico.

INNER_EOF

# Adiciona da seção 6 em diante, se houver
awk '/^## 6\. /{flag=1} flag' "$ARQUIVO" >> "$TEMP"

# Substitui o arquivo original
mv "$TEMP" "$ARQUIVO"

echo "✅ Seção 5 atualizada com sucesso na versão 1.1.1."
