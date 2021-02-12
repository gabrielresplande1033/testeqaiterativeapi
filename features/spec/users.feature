#language: pt

@users_test
Funcionalidade: Realizar pesquisa de usuários
Como usuário do sistema
Eu quero realizar requisições na api
A fim de realizar pesquisa de usuários


@pesquisar_usuario_especifico
Cenário: Pesquisar usuário
   Dado o usuário "Naik" 
   Quando busco por esse usuário
   Então  valido o status code 200
   E valido que a busca retornou elementos que contenham o nome do usuário

@pesquisar_usuarios
Esquema do Cenário: Pesquisar usuários
   Quando busco por esse usuário <user>
   Então valido o status code 200
   E valido que a busca retornou elementos que contenham o nome do usuário

    Exemplos:
      | user    |
      | "Joshi" |
      | "Naik"  |
      | "Desai" |
      | "Sinha" |
      | "Devar" |

@pesquisar_posts
Cenário: Validar Posts
    Dado que busco por todos os usuários
    E armazeno o id do primeiro usuário
    Quando busco pelos posts desse usuário
    Então  valido o status code 200
    E valido os posts para esse usuário