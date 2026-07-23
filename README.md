# Bootcamp Bradesco - GenAI, Dados & Cyber

Repositório com as queries, exercícios e materiais desenvolvidos durante o **Bootcamp Bradesco**, focado em Inteligência Artificial, Dados e Cibersegurança.

## 📋 Sobre o bootcamp

O bootcamp ensina, do zero, como utilizar Inteligência Artificial, Dados e Cibersegurança para construir soluções modernas e alinhadas às principais demandas do mercado, explorando ferramentas e tecnologias utilizadas por grandes empresas.

Principais frentes de estudo:

- 🤖 Fundamentos de **IA Generativa** e **Prompt Engineering**
- 📊 Análise de dados com **Excel**, **SQL** e **Python**
- 🔐 Práticas essenciais de **segurança digital**
- ⚙️ **Automação** de processos
- 🚀 Projetos práticos: assistentes inteligentes, tratamento e visualização de dados, e aplicação de IA em cenários reais de produtividade e cibersegurança

### Formato das atividades

| Atividade | Descrição |
|---|---|
| **Cursos** | Aulas em vídeo curtas e objetivas, com avaliação ao final de cada módulo |
| **Mentorias (Live)** | Encontros ao vivo com especialistas do mercado para aprofundar temas e tirar dúvidas |
| **Desafio de Código** | Exercícios práticos de programação para aplicar o conteúdo aprendido |
| **Desafio de Projeto** | Projetos completos que reúnem diferentes conteúdos, prontos para portfólio |
| **Desafio de Criação** | Aplicação de IA generativa para reproduzir desafios reais do dia a dia de um creator |

## 📁 Estrutura do repositório

```
bootcamp_bradesco/
├── Dados/
│   └── modelagem_relacionais.sql
└── Databases/
    └── E-CARDS/
        └── db_scripts/
            ├── prompts/
            ├── seeds/
            ├── tables/
            └── views/
```

- **`Dados/`** — Queries e scripts SQL desenvolvidos durante os módulos de dados do bootcamp.
  - `modelagem_relacionais.sql`: exercícios de modelagem de um banco de dados relacional (schema `viagens`, com as tabelas `usuarios`, `destinos` e `reservas`), incluindo:
    - Criação de tabelas (`CREATE TABLE`) com definição de colunas, tipos, `NOT NULL`, `UNIQUE` e comentários (`COMMENT`)
    - Inserção, consulta, atualização e remoção de dados (`INSERT`, `SELECT`, `UPDATE`, `DELETE`)
    - Alteração de estrutura de tabelas (`ALTER TABLE`): adicionar/remover colunas, modificar tipos, renomear tabelas
    - Definição de chave primária (`PRIMARY KEY`, `AUTO_INCREMENT`)
    - Criação e remoção de chaves estrangeiras (`FOREIGN KEY`), incluindo a opção `ON DELETE CASCADE`
    - Migração de dados entre tabelas (criação de tabela nova + `INSERT INTO ... SELECT` + `DROP` da antiga)
    - Normalização de dados: separação da coluna `endereco` em `rua`, `numero`, `cidade` e `estado` usando `SUBSTRING_INDEX`
    - Criação de índice (`CREATE INDEX`)

- **`Databases/E-CARDS/db_scripts/`** — Scripts de um projeto de modelagem de banco de dados para um **TCG de cards de Pokémon**, organizados em subpastas por tipo de script:
  - **`tables/`** — Criação das tabelas do banco (PostgreSQL):
    - `tbl_collections`: coleções/sets de cards (`collectionSetName`, `releaseDate`, `totalCardsInCollection`)
    - `tbl_types`: tipos de cards, normalizados em tabela própria (`typeName`)
    - `tbl_stages`: estágios de evolução dos cards, normalizados em tabela própria (`stageName`)
    - `tbl_cards`: dados dos cards (`hp`, `name`, `info`, `attack`, `damage`, `weak`, `resis`, `retreat`, `cardNumberCollection`), relacionada a `tbl_collections` (`ON DELETE CASCADE`), `tbl_types` e `tbl_stages` (`ON DELETE RESTRICT`) via chaves estrangeiras
  - **`seeds/`** — Scripts de população inicial (dados de exemplo) das tabelas
  - **`views/`** — Views criadas sobre as tabelas do banco
  - **`prompts/`** — Prompts utilizados para apoiar a criação/modelagem do banco com IA generativa
  - Inclui ainda um script **PowerShell** (`combine-sql.ps1` ou similar) que percorre a pasta, concatena todos os arquivos `.sql` (em ordem alfabética) em um único arquivo `migration.sql`, separando cada script com a instrução `GO` — útil para gerar um script de migração único a partir dos arquivos individuais.

> 🚧 Repositório em construção — novas pastas e arquivos serão adicionados conforme o avanço pelos módulos do bootcamp (IA Generativa, Cibersegurança, Python, etc.).

## 🛠️ Tecnologias abordadas

- SQL / PostgreSQL
- PowerShell
- Python
- Excel
- Ferramentas de IA Generativa

## 👩‍💻 Autora

Desenvolvido por [Caah Paiva](https://github.com/caahpaiva) durante o Bootcamp Bradesco.
