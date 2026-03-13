# 📊 Análise Descritiva de Custos Hospitalares (R & SQL)

<div align="center">
  <img src="https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white" />
  <img src="https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/Data_Analysis-00f2ff?style=for-the-badge&logo=googleanalytics&logoColor=black" />
  <img src="https://img.shields.io/badge/UNIFOR-Business_Intelligence-7000ff?style=for-the-badge" />
</div>

<br>

> **Objetivo:** Explicação e demonstração prática de **Análise Descritiva de Dados** aplicada a áreas de negócios (Healthcare), com o intuito de facilitar a tomada de decisão estratégica hospitalar.

Este repositório contém o trabalho de extensão do curso de **Inteligência de Negócios** da [Universidade de Fortaleza (UNIFOR)](https://www.unifor.br/), desenvolvido para a disciplina de Análise Descritiva de Dados (Prof. José Iran Batista de Melo).

---

## 🎥 Apresentação em Vídeo
Todo o raciocínio analítico, a explicação do código e as conclusões de negócio foram gravados em vídeo. Clique na miniatura abaixo para assistir no YouTube:

[![Assista no Youtube](imagens/video-youtube.png)](https://www.youtube.com/watch?v=Zf6rcv67bT4)

---

## 🛠️ Tecnologias & Bibliotecas

Neste projeto, utilizamos uma abordagem híbrida: **R** para visualizações e estatística profunda, e **SQL** embutido no R para manipulações de dados ágeis e sintaxe de banco de dados.

- **Interpretador R:** Versão 4.3.1
- **IDE:** RStudio (2021.09.0)
- **Pacotes Principais:**
  - `sqldf` – Manipulação de dataframes usando sintaxe SQL pura.
  - `dplyr` – O canivete suíço da manipulação de dados em R.
  - `corrplot` – Geração visual de matrizes de correlação.
  - `ggplot2` – Criação de gráficos avançados e esteticamente limpos.

*(Todo o script desenvolvido encontra-se no arquivo [`codigos-dataset/atividade.R`](codigos-dataset/atividade.R)).*

---

## 🗂️ O Dataset

Os dados utilizados representam uma **pesquisa nacional de custos hospitalares** realizada pela US Agency for Healthcare. A amostra contém registros de pacientes internados na cidade de Wisconsin (EUA), restritos à faixa etária pediátrica e adolescente (0 a 17 anos).

**Dimensões:** 500 registros x 6 variáveis.

| Atributo | Tipo | Descrição |
| :--- | :---: | :--- |
| **AGE** | `INT` | Idade do paciente (0 a 17 anos). |
| **FEMALE** | `INT` | Variável Dummy (1 = Feminino, 0 = Masculino). |
| **LOS** | `INT` | *Length of Stay* (Tempo de internação em dias). |
| **RACE** | `INT` | Identificador racial do paciente (1 a 6). |
| **TOTCHG** | `INT` | *Total Charge* (Custo total da internação). |
| **APRDRG** | `INT` | Grupo de diagnóstico do paciente. |

*Nota sobre a Limpeza:* Como o dataset já se encontrava sumarizado, a única etapa de limpeza exigida foi a exclusão de valores nulos (ocorrendo apenas uma vez na coluna RACE).

---

## 💡 Perguntas de Negócio (Business Questions)

A análise foi conduzida para responder a 20 perguntas estratégicas que impactam a operação e o financeiro do hospital:

<details>
<summary><b>📋 Clique aqui para ver as 20 perguntas respondidas na análise</b></summary>
<br>

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
</details>

---

## 🚀 Navegação da Análise

O relatório completo foi dividido em páginas para facilitar a leitura dos conceitos estatísticos e a visualização dos códigos e gráficos gerados:

👉 **[Ir para a Parte 1: Medidas de Tendência Central e Posição Relativa](paginas/README.md)**
