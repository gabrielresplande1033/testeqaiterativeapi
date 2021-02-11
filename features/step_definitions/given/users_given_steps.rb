Dado('o usuário {string}') do |usuario|
    @busca_usuario = usuario
end

Dado('que busco por todos os usuários') do
    @response = @userService.find_all
end
  
Dado('armazeno o id do primeiro usuário') do
    usuarios = @response.parsed_response['data']
    @user = usuarios.first['id']
end