### Medidas de dispersão

**Medidas de dispersão** mostram o quão os valores estão espalhados dentro do conjunto de dados: Variância, Desvio Padrão e Coeficiente de variação (CV).

- **Variância** mede a variabilidade dos dados em relação à média.

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

|Início | Página anterior | Próxima página |
|:----------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------:|
| [Introdução](https://github.com/NandesLima/analise-de-dados-com-r-e-sql) | [Medidas de tendência central e de posição relativa](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/paginas/README.md) | [Análise exploratória](https://github.com/NandesLima/analise-de-dados-com-r-e-sql/blob/main/paginas/paginas/paginas/README.md)
