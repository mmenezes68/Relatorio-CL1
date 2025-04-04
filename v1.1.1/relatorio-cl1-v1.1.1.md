# Instituto de Ciências Biomédicas da Universidade de São Paulo  
**Relatório Técnico-Científico Preliminar**  
**Sistema de Computação Biológica CL1 – Cortical Labs**

**Autor**: Marcos Antonio de Menezes  
**Projeto de Pós-Doutorado em Segurança de Dados**  
**Orientador**: Prof. Dr. Walter Chesnut  
**Centro de Pesquisa: ICB/USP – Ecossistema de Segurança da Informação**

**Versão**: 1.1.1  
**Data**: São Paulo, 03 de abril de 2025

---

## 1. Introdução

Este relatório apresenta uma análise preliminar sobre a arquitetura e os fundamentos éticos, técnicos e científicos do sistema de computação biológica CL1, desenvolvido pela empresa australiana Cortical Labs. A proposta de integrar neurônios humanos vivos em circuitos computacionais reabre debates fundamentais sobre os limites da computação tradicional, ao mesmo tempo em que oferece novas possibilidades para áreas como inteligência artificial, neuroengenharia e segurança de dados.

O documento visa subsidiar o Instituto de Ciências Biomédicas da Universidade de São Paulo (ICB/USP) com informações confiáveis e contextualizadas, permitindo a avaliação criteriosa da viabilidade de integração desta tecnologia emergente ao ecossistema de pesquisa em segurança da informação atualmente em desenvolvimento no ICB.

Este documento apresenta uma análise crítica do sistema CL1, desenvolvido pela Cortical Labs, reunindo fundamentos éticos, técnicos e científicos a partir de fontes verificáveis. Também são incluídas, em caráter comparativo, referências a outras iniciativas internacionais de biocomputação com neurônios humanos, com o objetivo de contextualizar o posicionamento da tecnologia CL1 no cenário atual da pesquisa.

A estrutura do relatório segue a seguinte organização:

1. Introdução  
2. Aspectos Éticos, Legais e Regulatórios  
3. Documentação Técnica e Patentes  
4. Aplicações Científicas e Desafios Técnicos  
5. Projetos Relacionados e Panorama Internacional  
6. Considerações Finais e Encaminhamentos



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

