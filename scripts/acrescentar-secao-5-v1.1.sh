#!/bin/bash

cat <<'INNER_EOF' >> "/Users/marcosmenezes/Desktop/Walter/Relatorio-CL1/v1.1/relatorio-cl1-v1.1.md"

## 5. Projetos Relacionados e Panorama Internacional

Além da Cortical Labs, outras iniciativas ao redor do mundo vêm desenvolvendo plataformas que utilizam neurônios humanos em ambientes computacionais. A seguir, destacam-se os principais projetos em curso, com características técnicas, status de maturidade e fontes oficiais.

### 5.1 FinalSpark (Suíça)

A startup **FinalSpark**, com sede na Suíça, desenvolveu uma plataforma de “Neuroplatform-as-a-Service” baseada em culturas de neurônios humanos vivos. A empresa afirma que seu sistema é capaz de executar códigos em tempo real sobre redes neurais biológicas, sendo atualmente utilizado em ambiente controlado para experimentos de cognição artificial e aprendizado adaptativo.

A FinalSpark disponibiliza sua plataforma para universidades parceiras, utilizando **mini-biorreatores** com neurônios derivados de células-tronco. Os dados são acessíveis via conexão web segura, e a empresa enfatiza a redução de consumo energético em comparação a sistemas digitais convencionais.

> 🔗 Site oficial: https://finalspark.com  
> 🔗 Artigo técnico: https://www.biorxiv.org/content/10.1101/2023.06.06.543957v1

### 5.2 Brainoware (Japão/Estados Unidos)

O projeto **Brainoware**, desenvolvido em colaboração entre cientistas da Universidade de Indiana (EUA) e do Japão, explora a possibilidade de conectar organoides cerebrais humanos a sistemas eletrônicos de inteligência artificial. A pesquisa utiliza organoides cultivados a partir de células-tronco humanas que são estimulados com sinais elétricos para análise de padrões de resposta.

Apesar de se encontrar em estágio experimental, o Brainoware já foi utilizado para **reconhecimento de fala e previsão de séries temporais**, com resultados considerados promissores.

> 🔗 Artigo (Nature Electronics, 2023):  
> https://www.nature.com/articles/s41928-023-01053-5

### 5.3 Comparativo entre projetos

| Projeto       | País           | Tipo de célula          | Plataforma disponível? | Foco principal                    | TRL estimado |
|---------------|----------------|--------------------------|-------------------------|------------------------------------|--------------|
| CL1 (Cortical Labs) | Austrália       | iPSCs → neurônios        | Sim (Cortical Cloud)    | Computação adaptativa             | 5-6          |
| FinalSpark    | Suíça          | iPSCs → neurônios        | Sim                     | Eficiência energética / cognição  | 4-5          |
| Brainoware    | Japão / EUA    | Organoides cerebrais     | Não (pesquisa interna)  | Aprendizado, fala, predição       | 3-4          |

### 5.4 Observações gerais

Esses projetos demonstram que a biocomputação baseada em neurônios humanos está deixando de ser apenas teórica para se tornar uma realidade tecnológica. No entanto, todos os sistemas ainda enfrentam limitações quanto à escalabilidade, padronização e validação científica ampla.

O ecossistema internacional está em construção, e universidades interessadas, como o ICB/USP, podem se posicionar como pioneiras no acesso e aplicação desses recursos, desde que observadas as normas éticas e a viabilidade técnica.

INNER_EOF

echo "✅ Seção 5 acrescentada com sucesso ao relatório v1.1."
