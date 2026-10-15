# ⚙️ MySQL Automation — Scripts e Automações SQL

## 📌 Sumário

- Contexto
- Objetivo
- Automações Disponíveis
- Tecnologias Utilizadas
- Estrutura do Projeto
- Arquivos e Documentação
- Próximos Projetos
- Autor

---

## 📌 Contexto

Este repositório reúne consultas SQL, *stored procedures* e scripts desenvolvidos para automatizar tarefas em bancos de dados MySQL.

A proposta é centralizar soluções reutilizáveis que possam facilitar atividades como auditoria de bancos de dados, identificação de inconsistências, verificação da qualidade dos dados e execução de tarefas recorrentes.

Cada automação possui sua própria pasta, contendo o script SQL e um arquivo README com a explicação de seu objetivo, funcionamento, conceitos utilizados, instruções de execução e exemplos de resultados.

O repositório será atualizado continuamente com novas consultas e automações desenvolvidas ao longo dos estudos e projetos práticos.

---

## 🎯 Objetivo

O objetivo deste repositório é desenvolver e organizar soluções de automação utilizando SQL e MySQL, facilitando sua reutilização, manutenção e compreensão.

As principais propostas são:

- Automatizar tarefas que exigiriam consultas manuais repetitivas;
- Criar scripts reutilizáveis para diferentes situações;
- Explorar recursos do MySQL para manipulação e análise de dados;
- Desenvolver soluções para auditoria e verificação da qualidade dos dados;
- Documentar a lógica de cada automação para facilitar seu entendimento e utilização;
- Construir uma biblioteca de scripts que possa servir de referência para projetos futuros.

---

## ⚙️ Automações Disponíveis

### 1. Consulta de Nulos e Vazios MySQL

**Objetivo:** automatizar a identificação e a contagem de valores vazios e valores `NULL` nas colunas textuais do banco de dados selecionado.

**O que o código faz:**

- Identifica tabelas e colunas textuais por meio do `INFORMATION_SCHEMA`;
- Percorre as colunas encontradas utilizando um cursor;
- Constrói e executa consultas SQL dinamicamente;
- Conta valores vazios ou compostos apenas por espaços comuns;
- Conta valores `NULL` separadamente;
- Apresenta um relatório com as tabelas, colunas e respectivas quantidades encontradas.

**Principais conceitos:** Stored Procedures, cursores, handlers, SQL dinâmico, tabelas temporárias e funções de agregação.

**Pasta:** `Consulta de nulos e vazios MySQL/`
**Documentação:** [Consulta de nulos e vazios MySQL](./Consulta%20de%20nulos%20e%20vazios%20MySQL/README.md)


---

## 🛠️ Tecnologias Utilizadas

- **MySQL:** desenvolvimento e execução das automações em bancos de dados relacionais.
- **SQL:** construção de consultas, filtros, agregações e comandos para manipulação de dados.
- **Stored Procedures:** encapsulamento de instruções SQL para execução reutilizável.
- **Git e GitHub:** versionamento, organização e documentação dos projetos.

## 📁 Estrutura do Projeto

```text
mysql-automation/
│
├── README.md
│
├── 01-consulta-nulos-e-vazios/
│   ├── README.md
│   └── Consulta nulos e vazios.sql
│
└── [novas-automações]/
    ├── README.md
    └── script.sql
```

Cada automação possui uma pasta própria, mantendo o código SQL separado de sua documentação detalhada.

Novos diretórios serão adicionados conforme novas soluções forem desenvolvidas.

---

## 📄 Arquivos e Documentação

Cada pasta de automação poderá conter:

- **Script SQL:** código responsável pela execução da tarefa automatizada.
- **README.md:** documentação com o contexto, objetivo, funcionamento, conceitos utilizados, pré-requisitos, instruções de execução, exemplos e limitações do script.

Essa organização permite consultar rapidamente a finalidade de cada código e compreender sua utilização sem depender apenas da leitura das instruções SQL.

---

## 👤 Autor

**Luis Fernando Sosnoski de Souza**

🎓 Engenharia da Computação — Centro Universitário Fundação Santo André

📊 Foco em Análise e Inteligência de Dados

🔗 [LinkedIn](INSIRA_SEU_LINK_DO_LINKEDIN)

💻 [GitHub](INSIRA_SEU_LINK_DO_GITHUB)
