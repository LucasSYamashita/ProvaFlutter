# Aplicativo de Agenda de Contatos - Flutter

## Descrição
Este projeto é um aplicativo de agenda de contatos desenvolvido com Flutter, permitindo gerenciar contatos de maneira prática. As funcionalidades incluem adicionar, editar, listar e excluir contatos, com suporte a validações de campos para garantir a consistência dos dados. O aplicativo é ideal para quem procura uma solução simples e intuitiva para organizar contatos.

## Funcionalidades

### 1. Listar Contatos
Exibe uma lista de todos os contatos cadastrados, mostrando nome, telefone e e-mail.

### 2. Adicionar Contato
Permite cadastrar novos contatos na agenda com as informações de nome, telefone e e-mail.

### 3. Editar Contato
Oferece a possibilidade de alterar os dados de um contato existente diretamente na interface de listagem.

### 4. Excluir Contato
Remove um contato da lista de forma permanente, com uma opção de exclusão dentro da tela de edição.

### 5. Autenticação de Usuário
Inclui uma tela de login e registro de usuário, com armazenamento seguro da sessão, permitindo que o usuário permaneça autenticado entre as sessões.

### 6. Validações
- O campo **Nome** é obrigatório e deve ser preenchido.
- O campo **Telefone** deve estar no formato correto: `(XX) XXXXX-XXXX`.
- O campo **E-mail** deve seguir o formato válido de endereço de e-mail.

## Requisitos do Sistema

### 1. Flutter
- Versão 3.0.0 ou superior.

### 2. Dart
- Versão 2.17.0 ou superior.

### 3. Dependências
- **Sqflite**: versão 2.0.0 ou superior (para persistência de dados).
- **flutter_secure_storage**: versão 8.0.0 ou superior (para armazenamento seguro da sessão do usuário).

## Configuração

1. Instale as dependências do projeto:
   ```bash
   flutter pub get
# Estrutura do Projeto
## lib/main.dart:
Arquivo principal do aplicativo.
## lib/screens/:
Contém as telas de listagem, cadastro e login.
## lib/models/: 
Contém as classes de dados Contato e User.
## lib/services/database_helper.dart: 
Contém métodos para manipulação dos dados de contato e autenticação.
## lib/services/secure_storage_service.dart: 
Serviço que utiliza flutter_secure_storage para armazenamento seguro da sessão do usuário.
## lib/utils/validation_utils.dart:
Contém métodos de validação para garantir o preenchimento correto dos campos de contato.
