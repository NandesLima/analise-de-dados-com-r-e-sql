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
