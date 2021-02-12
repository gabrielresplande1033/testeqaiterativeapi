# Objetivo
Esse projeto tem como principal objetivo a avaliação do processo seletivo da Iterative para a vaga de Analista de Testes / Qualidade de software.

# Tecnologias utilizadas
- [Ruby](https://www.ruby-lang.org/pt/)
- [Cucumber](https://cucumber.io/)
- [Capybara](https://www.rubydoc.info/github/jnicklas/capybara)
- [Chromedriver](https://chromedriver.chromium.org/downloads)


# Funcionalidades
- Automação de testes no endpoint de usuario, fazendo uma pesquisa por nome especifico
- Automação de testes no endpoint de usuário, com um esquema de cenário validando alguns nomes
- Automação de testes no endpoint de posts, fazendo a busca por id de usuário



# Como executar os testes da API
Para executar os testes da API deve-se possuir instalado o **Ruby**, **Bundle**, clonar o projeto e executar os seguintes comandos dentro da raiz do projeto:
- *bundle install*
- *cucumber* (para executar todos os testes)
- *cucumber -t @pesquisar_usuario_especifico* (para executar o teste referente aos usuários cujo nome possui "Naik")
- *cucumber -t @pesquisar_usuarios* (para executar o teste de busca por nome, utilizando esquema de cenário e validando alguns nomes)
- *cucumber -t @pesquisar_posts* (para executar o teste de validação de post de um usuário)
