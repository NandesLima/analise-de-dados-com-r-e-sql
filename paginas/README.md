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
   
   | Min.  | 1st Qu. | Median | Mean  | 3rd Qu. | Max.   |
   |:-----:|:-------:|:------:|:-----:|:-------:|:------:|
   | 0,000 | 0,000   | 0,000  | 5,096 | 13,000  | 17,000 |

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/boxplo-idades.png)
    R: Analisando os valores tanto das medidas de posição relativa como do gráfico bloxpot, podemos concluir que pelo menos 50% dos dados de idade estão na faixa de 0 anos, ou seja, recém-nascidos.

8. Quais as medidas de posição relativa dos tempos de permanência/internação dos pacientes?
   
   | Min. | 1st Qu. | Median | Mean | 3rd Qu. | Max.  |
   |:----:|:-------:|:------:|:----:|:-------:|:-----:|
   | 0,00 | 2,00    | 2,00   | 2,83 | 3,00    | 41,00 |

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/boxplot-tempo.png)
    R: Os dados que estão cocentrados entre o primeiro quartil e a mediana que é 25% dos dados são referentes a 2 horas de permanência/internação no hospital. Observamos também muitos outloiers, tanto o valor 0 como vários após as 3 horas.

| Página Anterior | Próxima págia |
|:----------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------:|
| [Introdução](https://github.com/NandesLima/analise-de-dados-com-r-e-sql) | [Medidas de dispersão e tabelas de frequência](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/tree/main/paginas/paginas) |
