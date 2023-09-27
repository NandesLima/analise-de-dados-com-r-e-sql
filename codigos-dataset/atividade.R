# Análise Financeira Utilizando o SQL para Análise Descritiva e R para análise de regressão

# Intalando pacotes necessários
install.packages('sqldf')
install.packages('dplyr')
install.packages('corrplot')
install.packages('ggplot2')

# Pacotes
library(dplyr)
library(sqldf)
library(corrplot)
library(ggplot2)

# Carregando o dataset
dados <- read.csv('dataset.csv')

# Dimensões
dim(dados)

# Visualizando os dados
View(dados)

# Nomes das colunas
names(dados)

# Verificando ocorrência de valores NA (VAZIO)
colSums(is.na(dados))

# Apenas um valor com NA, então SERÁ removIDO
dados <- na.omit(dados)

#Verificando ocorrência de valores NA
colSums(is.na(dados))

# Tipos de dados
str(dados)



##### Análise Exploratória com Linguagem SQL #####

### Medidas de tendência central
## Média
# 1 - Qual a idade média dos pacientes?
idade_media <- sqldf("SELECT AVG(AGE) as Idade_Media FROM dados")
View(idade_media)

# 2 - Qual o tempo médio de internações dos pacientes?
tempo_medio <- sqldf("SELECT AVG(LOS) as Tempo_Medio FROM dados")
View(tempo_medio)

## Moda
# 3 - Qual a moda da idade dos pacientes?
idade_moda <- sqldf("SELECT AGE as Idade FROM
                   (SELECT AGE, COUNT(AGE) as Contar_idade FROM dados
                    GROUP BY AGE
                    ORDER BY contar_idade DESC)
                    LIMIT 1")

View(idade_moda)

# 4 - Qual a moda do tempo de internação dos pacientes?
tempo_moda <- sqldf("SELECT LOS as Tempo FROM
                   (SELECT LOS, COUNT(LOS) as Contar_tempo FROM dados
                    GROUP BY LOS
                    ORDER BY contar_tempo DESC)
                    LIMIT 1")

View(tempo_moda)

## Mediana
# 5 - Qual a mediana da idade dos pacientes?
idade_mediana <- sqldf("SELECT MEDIAN(AGE) as Idade_Mediana FROM dados")
View(idade_mediana)

# 6 - Qual a mediana do tempo de internação dos pacientes?
tempo_mediana <- sqldf("SELECT MEDIAN(LOS) as Tempo_Mediana FROM dados")
View(tempo_mediana)



### Medidas de posição relativa

# 7 - Quais as medidas de posição relativa das idades dos pacientes?
summary(dados$AGE)

# boxplot
idadeboxplot <- boxplot(x = dados[,"AGE"],
                        main = "Boxplot de idades")


# 8 - Quais as medidas de posição relativa dos tempos de internação dos pacientes?
summary(dados$LOS)

# boxplot
tempoboxplot <- boxplot(x = dados[,"LOS"],
                        main = "Boxplot de tempo de internação")

### Medidas de dispersão

# 9 - Quais as medidas de dispersão da idade dos pacientes?

# Variancia
idade_variancia <- sqldf("SELECT SUM((AGE - (SELECT AVG(AGE) FROM dados)) * 
                        (AGE - (SELECT AVG(AGE) FROM dados))) / (COUNT(AGE) 
                         - 1) AS variancia FROM dados")
View(idade_variancia)


# Desvio Padrão
idade_desvio <- sqldf("SELECT SQRT(SUM((AGE - (SELECT AVG(AGE) FROM dados)) 
                      * (AGE - (SELECT AVG(AGE) FROM dados))) / (COUNT(AGE) 
                      - 1)) AS desvioPadrao FROM dados")
View(idade_desvio)


# Coeficiente de variância
idade_cv <- sqldf("SELECT SQRT(SUM((AGE - (SELECT AVG(AGE) FROM dados)) * 
                  (AGE - (SELECT AVG(AGE) FROM dados))) / (COUNT(AGE) - 1)
                  ) * 100.0 / AVG(AGE) AS cv FROM dados")
View(idade_cv)


# 10 - Quais as medidas de dispersão do tempo de internação dos pacientes?

# Variancia
tempo_variancia <- sqldf("SELECT SUM((LOS - (SELECT AVG(LOS) FROM dados)) * 
                        (LOS - (SELECT AVG(LOS) FROM dados))) / (COUNT(LOS) 
                         - 1) AS variancia FROM dados")
View(tempo_variancia)


# Desvio Padrão
tempo_desvio <- sqldf("SELECT SQRT(SUM((LOS - (SELECT AVG(LOS) FROM dados)) * 
                        (LOS - (SELECT AVG(LOS) FROM dados))) / (COUNT(LOS) 
                         - 1)) AS desvioPadrao FROM dados")
View(tempo_desvio)


# Coeficiente de variância
tempo_cv <- sqldf("SELECT SQRT(SUM((LOS - (SELECT AVG(LOS) FROM dados)) * 
                  (LOS - (SELECT AVG(LOS) FROM dados))) / (COUNT(LOS) 
                  - 1)) * 100.0 / AVG(LOS) AS cv FROM dados")
View(tempo_cv)



### Tabelas de frequência

# 11 - Qual a distribuição dos pacientes pela raça?

# Tabela de frequência
num_racas <- sqldf("SELECT RACE as Raça, 
                    COUNT(RACE) as FrAbsoluta,
                    (COUNT(RACE) * 100.0/ (SELECT COUNT(*) FROM dados)) as FrRelativa
                    FROM dados
                    GROUP BY RACE")
View(num_racas)

# Histograma
hist(dados$RACE,
     main = 'Distribuição da raça dos Pacientes que Frequentam o Hospital',
     xlab = 'Raça',
     border = 'black',
     col = c('light green', 'dark green'),
     xlim = c(1,6),
     ylim = c(0,500))

# 12 - Qual a distribuição dos pacientes por idade?

num_idade <- sqldf("SELECT AGE as Idade, 
                    COUNT(AGE) as FrAbsoluta,
                    (COUNT(AGE) * 100.0/ (SELECT COUNT(*) FROM dados)) as FrRelativa
                    FROM dados
                    GROUP BY AGE")
View(num_idade)

# Histograma
hist(dados$AGE,
     main = 'Distribuição da Idade dos Pacientes que Frequentam o Hospital',
     xlab = 'Idade',
     border = 'black',
     col = c('light green', 'dark green'),
     xlim = c(0,18),
     ylim = c(0,320))



### Análise exploratória

# 13 - Qual o gasto total com internações hospitalares por idade?
gasto_total_idade <- sqldf("
                           SELECT AGE as Idade,
                           SUM(TOTCHG) as Gasto_Total
                           FROM dados
                           GROUP BY AGE")
View(gasto_total_idade)

# 14 - E qual idade gera o maior gasto total com internações hospitalares?
arrange(gasto_total_idade, desc(Gasto_Total))[1,]

# 15 - Qual o gasto total com internações hospitalares por gêneros?
gasto_total_genero <- sqldf('
                            SELECT FEMALE as Gênero,
                            SUM(TOTCHG) as Gasto_Total
                            FROM dados
                            GROUP BY FEMALE')
View(gasto_total_genero)

# 16 - Qual o gasto médio com internações hospitalares por raça do paciente?
gasto_medio_race <- sqldf('
                            SELECT RACE as Raça,
                            AVG(TOTCHG) as Gasto_Medio
                            FROM dados
                            GROUP BY RACE')
View(gasto_medio_race)

# 17 - Para pacientes acima de 10 anos, qual a média de gastos total com internações hospitalares?
gasto_medio_idade_acima_10anos <- sqldf('
                                        SELECT AGE as Idade,
                                        AVG(TOTCHG) as Gasto_Medio
                                        FROM dados
                                        WHERE AGE > 10
                                        GROUP BY AGE')
View(gasto_medio_idade_acima_10anos)

# 18 - Considerando o item anterior, qual idade tem média de gastos superior a 3000?
gasto_medio_idade_acima_10anos_acima3k <- sqldf('
                                                SELECT AGE as Idade,
                                                AVG(TOTCHG) as Gasto_Medio
                                                FROM dados
                                                WHERE AGE > 10
                                                GROUP BY AGE
                                                HAVING AVG(TOTCHG) > 3000
                                                ')
View(gasto_medio_idade_acima_10anos_acima3k)




##### Análise de Regressão Linear com Linguagem R #####

### Matriz de correlação dos dados
cor_matrix <- cor(dados)
corrplot(cor_matrix,
         method = 'color',
         type = "upper",
         addCoef.col = 'springgreen2',
         tl.col = 'black',
         tl.srt = 45)

### Gráfico de dispersão
ggplot(dados, aes(x=LOS, y=TOTCHG)) +
  geom_point(aes(color=LOS), alpha=0.6) +
  ggtitle('Gráfico de dispersão entre LOS e TOTCHG') +
  xlab('Tempo de internação') +
  ylab('Gastos por internação')

# 19 - O tempo de permanência é um fator crucial para pacientes internados, é possível descobrir se o tempo de permanência
# está relacionado com idade, gênero e raça?

# Modelo de regressão linear
# Variável dependente: LOS
# Variáveis independentes: AGE, FEMALE e RACE

modelo_lr <- lm(LOS ~ AGE + FEMALE + RACE, data = dados)
summary(modelo_lr)

# Valor-p maior que 0.05 em todos os casos, logo O modelo não é significativo.


# 20 - Quais variáveis têm maior impacto nos custos de internação hospitalar?

# Modelo de regressão linear

# Modelo de regressão linear
# Variável dependente: TOTCHG
# Variáveis independentes: AGE, FEMALE, RACE, LOS e APRDRG

modelo_lr_geral <- lm(TOTCHG ~ ., data = dados)
summary(modelo_lr_geral)

# Idade, tempo de permanência (LOS) e grupo de diagnóstico do paciente (APRDRG) possuem três asteriscos, 
# ou seja são os únicos com significância estátistica.


# Removendo a variável RACE que teve menos impacto

modelo_lr_4var <- lm(TOTCHG ~ AGE + FEMALE + LOS + APRDRG, data = dados)
summary(modelo_lr_4var)

# Removendo a variável FEMALE que teve menos impacto

modelo_lr_3var <- lm(TOTCHG ~ AGE + LOS + APRDRG, data = dados)
summary(modelo_lr_3var)

# Todas as variáveis tem grande significância com valor P bastante baixo
# O valor T apareceu negativo

modelo_lr_2var <- lm(TOTCHG ~ AGE + LOS, data = dados)
summary(modelo_lr_2var)

# R² diminuiu e o valor de P do modelo aumentou, e a taxa de erro aumentou.


# Resolução: Os custos dos cuidados de saúde dependem da idade, do tempo de permanência e do grupo de diagnóstico.






