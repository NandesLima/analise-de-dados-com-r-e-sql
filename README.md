# Análise Descritiva de Dados com R e SQL

- Explicação e demonstração de Análise Descritiva de Dados com aplicação em áreas de negócios, com o intuito de facilitar a tomada de decisão.
  
- Trabalho de extensão do curso de Inteligência de Negócios da [Universidade de Fortaleza (UNIFOR)](https://www.linkedin.com/school/uniforoficial/).

- Disciplina de Análise Descritiva de Dados, Professor José Iran Batista de Melo.

## Introdução

    Neste trabalho são utilizadas as ferramentas R e SQL para explicar e aplicar os conceitos de Análise Descritiva de forma prática, mas não possui o intuito de explicar as ferramentas utilizadas, sendo assim, são apresentados os principais conceitos da Análise Descritiva de Dados e em paralelo a aplicação prática com a linguagem R e a linguagem de consulta SQL. Todo o código está no [arquivo.R](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/codigos-dataset/atividade.R).

    Um dos pontos principais é a apresentação e estão sendo utilizadas duas plataformas o [GitHub](https://github.com/NandesLima/analise-de-dados-com-r-e-sql) e o [Youtube](https://www.youtube.com/watch?v=Zf6rcv67bT4).

[![R e SQL](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/video-youtube.png)](https://www.youtube.com/watch?v=Zf6rcv67bT4)

## Requisitos

- [Interpretador R Versão 4.3.1](https://vps.fmvz.usp.br/CRAN)
- [IDE RStudio versão 2021.09.0](https://posit.co/blog/rstudio-2021.09.0-update-whats-new/)

### Bibliotecas utilizadas

- sqldf – Biblioteca de manipulação de linguagem SQL.
- dplyr – Biblioteca de manipulação de dados.
- corrplot – Biblioteca para matriz de variável de correlação.
- ggplot2 – Biblioteca de criação de gráficos.

## Dataset

  Usaremos dados de uma pesquisa nacional de custos hospitalares realizada pela US Agency for Healthcare que consiste em registros hospitalares de amostras de pacientes internados. Os dados fornecidos são restritos à cidade de Wisconsin e referem-se a pacientes na faixa etária de 0 a 17 anos.
  
  O [dataset](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/codigos-dataset/dataset.csv) foi gerado a partir das seguintes fontes:

[![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/hospital-cost.jpg)](https://www.cms.gov/data-research/statistics-trends-and-reports/hospital-cost-report-public-use-file)

[![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/data-gov.jpg)](https://healthdata.gov/)

### Entendendo o dataset

- O [dataset](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/codigos-dataset/dataset.csv) possui 500 linhas e 6 colunas.
- Todos os atributos são do tipo INT (Número inteiro).

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/tabela.jpg)

Atributo | Descrição
:--: | :--:
AGE | Idade do paciente, varia de 0 a 17 anos
FEMALE | Variável binária que indica se o paciente é do sexo feminino, sendo 1 para feminino e 0 para masculino
LOS | Tempo de internação/permanência do paciente
RACE | Raça do paciente, varia de 1 a 6
TOTCHG | Custo de internação
APRDRG | Grupo de diagnóstico do paciente

### Limpeza nos dados

  Como os dados já estão sumarizados a única limpeza dos dados feita foi excluir os valores nulos. Houve apenas uma ocorrência na na coluna RACE.

## Perguntas de negócios

  Como o intuito não é somente a explicação da Análise Descritiva de Dados, durante cada tópico serão respondidas algumas perguntas de negócios. Elas são:

  1. Qual a idade média dos pacientes?
  2. Qual o tempo médio de permanência/internações dos pacientes?
  3. Qual a moda da idade dos pacientes?
  4. Qual é a moda de permanência/internações dos pacientes?
  5. Qual a mediana da idade dos pacientes?
  6. Qual a mediana do tempo de permanência/internações dos pacientes?
  7. Quais as medidas de posição relativa das idades dos pacientes?
  8. Quais as medidas de posição relativa dos tempos de permanência/internação dos pacientes?
  9. Quais as medidas de dispersão da idade dos pacientes?
  10. Quais as medidas de dispersão do tempo de permanência/internação dos pacientes?
  11. Qual a distribuição dos pacientes pela raça?
  12. Qual a distribuição dos pacientes por idade?
  13. Qual o gasto total com internações hospitalares por idade?
  14. E qual idade gera o maior gasto total com internações hospitalares?
  15. Qual o gasto total com internações hospitalares por gêneros?
  16. Qual o gasto médio com internações hospitalares por raça do paciente?
  17. Para pacientes acima de 10 anos, qual a média de gastos total com internações hospitalares?
  18. Considerando o item anterior, qual idade tem média de gastos superior a 3000?
  19. O tempo de permanência é um fator crucial para pacientes internados, é possível descobrir se o tempo de permanência está relacionado com idade, gênero e raça?
  20. Quais variáveis têm maior impacto nos custos de internação hospitalar?


## Análise Descritiva de Dados

  A Análise Descritiva de Dados é responsável pela coleta, organização, descrição, síntese e análise dos dados. A Análise Descritiva pode ser feita através de MEDIDAS DE TENDÊNCIA CENTRAL, DE POSIÇÃO RELATIVA, DE DISPERSÃO, além de TABELAS DE FREQUêNCIA E REGRESSÃO.

### Medidas de tedência central

  **Medidas de tendência central** são aqueles que mostram o comportamento dos dados em torno de uma medida de centro, temos a média, moda e mediana.

#### Média

  **Média** é a mais utilizada das medidas de tendencia central, é o resultado das somas dos valores de uma variável dividido pela quantidade de observações.

  O conceito de média responde as duas prinmeiras perguntas e no código [atividade.R](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/codigos-dataset/atividade.R) é utilizado a linguagem R em paralelo com o SQL.

  1. Qual a idade média dos pacientes?

    R: 5,096192 anos

  2. Qual o tempo médio de permanência/internações dos pacientes?

    R: 2,829659 horas

#### Moda

  **Moda** é o valor que se repete mais vezes dentre os dados observados.

  E com ela respondemos as questões 3 e 4 de negócios, utilizando novamente em paralelo o R e o SQL.

  3. Qual é a moda da idade dos pacientes?

    R: 0 anos

  4. Qual é a moda de permanência/internações dos pacientes?

    R: 2 horas

#### Mediana

  **Mediana** é o valor do meio do conjunto de dados, organizado de forma crescente ou decrescente.

  A mediana responde as perguntas 5 e 6.

  5. Qual a mediana da idade dos pacientes?

    R: 0 anos

  6. Qual a mediana do tempo de permanência/internações dos pacientes?

    R: 2 horas


### Medidas de posição relativa

  **Medidas de posição relativa** comparam a posição de um valor em relação ao de outro valor em um conjunto de dados. Percentis e quartis sãos os mais comuns de serem utilizados.

- **Percentis** dividem o conjunto de dados em 100 partes iguais.
- **Quartis** dividem o conjunto de dados em 4 partes iguals.

Quartis dividem o conjunto de dados em 25% (primeiro quartil), 50% (segundo quartil), 75% (terceiro quartil) e 100% (quarto quartil).

O segundo quartil ou o 50% percentil é a mediana.

As medidas de posição relativa respondem as perguntas 7 e 8 e é utilizado apenas a linguagem R, e junto com as respostas, das medidas de posição é apresentado em seguida um gráfico de boxplot que mostra o comportamento das medidas de posição relativa.

  7. Quais as medidas de posição relativa das idades dos pacientes?
 
  Min. | 1st Qu. | Median | Mean | 3rd Qu. | Max.
  :--: | :--: | :--: | :--: | :--: | :--:
  0,000 | 0,000 | 0,000 | 5,096 | 13,000 | 17,000

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/boxplo-idades.png)

    R: Analisando os valores tanto das medidas de posição relativa como do gráfico bloxpot, podemos concluir que pelo menos 50% dos dados de idade estão na faixa de 0 anos, ou seja, recém-nascidos.

  8. Quais as medidas de posição relativa dos tempos de permanência/internação dos pacientes?

  Min. | 1st Qu. | Median | Mean | 3rd Qu. | Max.
  :--: | :--: | :--: | :--: | :--: | :--:
  0,00 | 2,00 | 2,00 | 2,83 | 3,00 | 41,00

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/boxplot-tempo.png)

    R: Os dados que estão cocentrados entre o primeiro quartil e a mediana que é 25% dos dados são referentes a 2 horas de permanência/internação no hospital. Observamos também muitos outloiers, tanto o valor 0 como vários após as 3 horas.


### Medidas de dispersão

**Medidas de dispersão** mostram o quão os valores estão espalhados dentro do conjunto de dados: Variância, Desvio Padrão e Coeficiente de variação (CV).

- **Variancia** mede a variabilidade dos dados em relação à média.

- **Desvio padrão** em termos simples é a distância média que os valores têm da média, ou seja, como seu nome sugere é um padrão de desvio (distância) em relação à média.

- **Coeficiente de variação (CV)** mede o desvio padrão em termos percentuais em relação da média, quanto maior o CV maior a variabilidade dos dados e menor sua consistência e quanto menor, menor é sua variabilidade e maior a consistência dos dados.

9. Quais as medidas de dispersão da idade dos pacientes?
    
  Variância | Desvio Padrão | CV
  :--: | :--: | :--:
  48,34013 | 6,952706 | 136,4294%

    R: As medidas de dispersão permitem uma interpretação de como os dados estão espalhados em relação a média, mas é necessário comparar com outro grupo de dados. Pelo menos com o CV podemos ver que o valor de espalhamento dos dados está em 136% em relação à média, logo podemos ver que os dados são muito dispersos.

10. Quais as medidas de dispersão do tempo de permanência/internação dos pacientes?

  Variância | Desvio Padrão | CV
  :--: | :--: | :--:
  11,33438 | 3,366657 | 118,9775%

    R: Pelo CV podemos perceber que o valor é 118% de dispersão em relação a média, ou seja, os dados são muito dispersos dentro do conjunto de dados.
