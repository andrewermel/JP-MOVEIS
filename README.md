JPMoveis - Catálogo de Produtos
Aplicação sendo desenvolvida sem nenhum fim lucrativo para ajudar a família dona de uma loja de móveis. A aplicação serve como um catálogo de produtos, permitindo que os clientes façam encomendas de produtos que não precisam estar disponíveis no estoque no momento da compra.

Funcionalidades
Inserção de novos móveis com valores de venda e compra, descrição, nome, status (disponível/indisponível) e múltiplas imagens.
Deletar móveis.
Visualizar todos os produtos cadastrados.
Restrição de páginas de administração (inserção/deleção de móveis) para usuários autenticados.
Funcionamento como catálogo online para encomendas de clientes.

Tecnologias Utilizadas
Ruby on Rails para desenvolvimento da aplicação web.
  Hotwire para atualização dinâmica do frontend.
  PostgreSQL como banco de dados.
  RSpec para testes automatizados.
  CSS para estilização da interface.
  Importmap para gestão de pacotes de JavaScript.
  Devise para autenticação de usuários.
  
Requisitos
  Ruby 3.3.0
  Rails 7.x.x
  PostgreSQL 13+
  Node.js (para funcionalidade opcional de gerenciamento de pacotes JavaScript)
  Yarn (caso esteja utilizando Node.js)
  
Passos para rodar o projeto
Clone o repositório:

  git clone https://github.com/seu-usuario/jpmoveis.git
  cd jpmoveis

Instale as dependências:

  bundle install
  
Configuração do Banco de Dados: Configure as credenciais do PostgreSQL no arquivo config/database.yml de acordo com o seu ambiente de desenvolvimento.

Crie o banco de dados:

  rails db:create
  rails db:migrate
  Instale Hotwire (se necessário):

  bin/rails hotwire:install
  Rodar o servidor:

  rails server
  Acesse a aplicação no navegador: Abra http://localhost:3000 para visualizar a aplicação em execução.

Testes
Para rodar os testes:

  rspec
  
Contribuições
Esta aplicação é um projeto pessoal para ajudar a loja de móveis da família e não tem fins lucrativos. Contribuições são bem-vindas, principalmente em termos de melhorias de código, testes ou otimização de desempenho.

Autores
Andrew Amorim - Desenvolvedor Backend Ruby on Rails
