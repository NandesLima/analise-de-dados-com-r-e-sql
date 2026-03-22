# 🗂️ O Dataset

Os dados representam uma **pesquisa nacional de custos hospitalares** realizada pela US Agency for Healthcare. A amostra contém registros de pacientes internados na cidade de Wisconsin (EUA), restritos à faixa etária pediátrica e adolescente (0 a 17 anos).

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

## 📊 Estrutura da Amostra

- **Idade:** Foco em recém-nascidos e adolescentes.
- **Custos:** Variabilidade significativa com base no diagnóstico e tempo de permanência.
- **Distribuição Racial:** Identificação de disparidades no acesso ou custo.

A análise utiliza o arquivo `dataset.csv` que serve de base para todas as consultas SQL e funções estatísticas aplicadas.
