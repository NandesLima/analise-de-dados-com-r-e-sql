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

### Medidas de dispersão

**Medidas de dispersão** mostram o quão os valores estão espalhados dentro do conjunto de dados: Variância, Desvio Padrão e Coeficiente de variação (CV).

- **Variancia** mede a variabilidade dos dados em relação à média.

- **Desvio padrão** em termos simples é a distância média que os valores têm da média, ou seja, como seu nome sugere é um padrão de desvio (distância) em relação à média.

- **Coeficiente de variação (CV)** mede o desvio padrão em termos percentuais em relação da média, quanto maior o CV maior a variabilidade dos dados e menor sua consistência e quanto menor, menor é sua variabilidade e maior a consistência dos dados.
9. Quais as medidas de dispersão da idade dos pacientes?
   
   | Variância | Desvio Padrão | CV        |
   |:---------:|:-------------:|:---------:|
   | 48,34013  | 6,952706      | 136,4294% |
   
    R: As medidas de dispersão permitem uma interpretação de como os dados estão espalhados em relação a média, mas é necessário comparar com outro grupo de dados. Pelo menos com o CV podemos ver que o valor de espalhamento dos dados está em 136% em relação à média, logo podemos ver que os dados são muito dispersos.

10. Quais as medidas de dispersão do tempo de permanência/internação dos pacientes?
    
    | Variância | Desvio Padrão | CV        |
    |:---------:|:-------------:|:---------:|
    | 11,33438  | 3,366657      | 118,9775% |
    
    R: Pelo CV podemos perceber que o valor é 118% de dispersão em relação a média, ou seja, os dados são muito dispersos dentro do conjunto de dados.

### Tabelas de frequência

**As tabelas de frequência** sumarizam a quantidade observada de determinado atributo, ou seja, a frequência que aparece nos dados.

- **Frequência absoluta** número de eventos observados.
- **Frequência relativa** relação entre os eventos observados e o total, ou seja, pode ser dada como uma fração ou em porcentagem.

Aqui utilizaremos as tabelas de frequência utilizando a linguagem R e SQL para responder as perguntas 11 e 12, além de gerar gráficos de histograma.

11. Qual a distribuição dos pacientes pela raça?

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/frequencia-raca.jpg)

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/distribuicao-raca-paciente.png)
    R: Pode-se concluir que pela distribuição a raça mais atendida é a raça de número 1 que se repete 464 vezes, um total de 96% dos dados.

12. Qual a distribuição dos pacientes por idade?

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/frequencia-idade.jpg)

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/distribuicao-idade-paciente.png)
    R: A idade que mais se repete é a de 0 anos, recém-nascidos, 306 vezes, um total de 61%.

## Análise exploratória

Aqui respondemos algumas perguntas de negócio (13 a 18) com algumas sumarizações de dados.

13. Qual o gasto total com internações hospitalares por idade?

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/gasto-por-idade.jpg)

14. E qual idade gera o maior gasto total com internações hospitalares?
    
    | Idade | Gasto total    |
    |:-----:|:--------------:|
    | 0     | US$ 676.952,00 |

15. Qual o gasto total com internações hospitalares por gêneros?

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/gasto-por-genero.jpg)

16. Qual o gasto médio com internações hospitalares por raça do paciente?

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/gasto-medio-raca.jpg)

17. Para pacientes acima de 10 anos, qual a média de gastos total com internações hospitalares?

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/gasto-medio-idade-maior10.jpg)

18. Considerando o item anterior, qual idade tem média de gastos superior a 3000?

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/gasto-medio-idade-maior10-maior3k.jpg)

## Regressão linear

O modelo de regressão investiga a relação entre variáveis.

### Regressão linear simples

- **Regressão linear simples** descreve o relacionamento entre duas variáveis usando uma equação, uma variável independente x que explica a variação em outra variável, que é chamada de variável dependente y. O gráfico de dispersao entre as duas variáveis formam uma linha reta.

- A regressão linear utiliza-se da correlação, que é a força de relacionamento linear entre as variáveis.

- O coeficiente de correlação r permite identificar se o relacionamento entre duas variáveis é forte ou não o suficiente para considerar estatisticamente significante.

- O coeficiente r varia entre -1 (forte relação negativa) e 1 (forte relação positiva), sendo 0 sem relação.

- Correlação não significa causalidade(um evento causado pelo outro).

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/grafico-correlacao.png)

A matriz gerada mostra o coefiente de correlação entre os dados do dataset, e podemos verificar que o único relacionamento estatísticamente significante é entre o tempo de internação (LOS) e os custos (TOTCHG).

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/grafico-dispersao-los-totchg.png)

Podemos observar que o gráfico tem uma tendência linear, mais com uma certa dispersão relevante.

### Regressão linear múltipla

**Regressão linear múltipla** é a regressão linear que possui uma váriável dependente y e duas ou mais variáveis independentes x1...Xn.

19. O tempo de permanência é um fator crucial para pacientes internados, é possível descobrir se o tempo de permanência está relacionado com idade, gênero e raça?

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/relatorio-1.jpg)

Pr(> |T|) é o Valor-p e no mercado é utilizado normalmente com significância menor que 0,05 para ter relevância estatística, logo esse modelo de linearidade falha, pois todos os valores em p são maiores que 0,05.

O coeficiente de correlação também está muito próximo de 0, o que prova não haver uma correlação significativa entre as variáveis.

A quantidade de asteriscos no relatório indica a significância, sendo 3 asteriscos alta significância, logo como as variáveis independentes não possuem asteriscos não possuem significância estatística.

20. Quais variáveis têm maior impacto nos custos de internação hospitalar?

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/relatorio-2.jpg)

- Modelo de teste 1

Algumas variáveis dependentes passam no teste do p-value: AGE, LOS e APRDRG

As variáveis FEMALE e RACE não passam então será feito um novo teste, será removida a variável RACE que teve o menor impacto.

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/relatorio-3.jpg)

- Modelo de teste 2

As variáveis dependentes que passaram no teste anterior do p-value, passaram novamente: AGE, LOS e APRDRG

A variável FEMALE não passa novamente e será removida para o próximo modelo.

![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/relatorio-4.jpg)

- Modelo de teste 3

Todas as variáveis dependentes passam no teste p-value mostrando uma alta significância.

Conclusão: Os custos dos cuidados de saúde, dependem da idade, do tempo de permanência e do grupo de diagnóstico.

## Conclusão

  A análise descritiva de dados permite o entendimento do conjunto de dados desde o seu centro e dispersão em torno do centro. Sumarizações como nas tabelas de frequência. E até mesmo entender a relação entre os dados através dos processos de regressão. Sendo úteis até para responder questões práticas de negócio.

## Participantes

| Ernandes Lima                                                                                        | Arlir Filho                                                                                      | Danilo de Lima                                                                                       | Jéssica Mayara                                                                                | Glaubia Costa | Denise Maria |
|:----------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------:|:-------------:|:------------:|
| ![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/1621899775850.jpeg) | ![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/139386165.jpeg) | ![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/1638414034265.jpeg) | ![](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/imagens/jessica.jpg) |               |              |
| [Linkedin](https://www.linkedin.com/in/ernandes-lima/)                                               | [Linkedin](https://www.linkedin.com/in/arlir-rodrigues-filho/)                                   | [Linkedin](https://www.linkedin.com/in/danilo-santos-5a70a869/)                                      |                                                                                               |               |              |
| [GitHub](https://github.com/NandesLima)                                                              | [GitHub](https://github.com/ArlirFilho)                                                          |                                                                                                      |                                                                                               |               |              |
