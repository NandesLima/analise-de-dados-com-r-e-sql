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

Próxima página | 
:--: |
[Medidas de tendência central e posição relativa](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/tree/main/paginas/README.md)|
