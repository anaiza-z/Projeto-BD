# 🎬 Sistema de Gerenciamento de Cinema
Este projeto tem como objetivo desenvolver um sistema de gerenciamento de cinema utilizando SQL, com foco em operações como cadastro de filmes, sessões, clientes e vendas de ingressos.

## 🗂️ Estrutura do Banco de Dados
O sistema é composto por diversas tabelas relacionadas, organizadas para representar a estrutura de um cinema real. Entre as principais entidades estão:

- `filme`: cadastro de títulos, gêneros e duração.
- `sala`: informações sobre as salas de exibição.
- `sessao`: horários e locais de exibição dos filmes.
- `cliente`: dados dos clientes cadastrados.
- `ingresso`: controle de vendas e reservas de ingressos.

## 💻 Funcionalidades
1. **Criação do Banco (`criacao.sql`)**
   - Criação das tabelas e definição dos relacionamentos com chaves primárias e estrangeiras.

2. **Inserção de Dados (`alimentacao.sql`)**
   - Dados fictícios para testes e validação do sistema.

3. **Consultas SQL (`consultas.sql`)**
   - Relatórios como sessões por filme, clientes por sessão e total de vendas.

