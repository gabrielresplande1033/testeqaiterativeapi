Quando('busco por esse usuário') do
    @response = @userService.find_by_name(@busca_usuario)
end

Quando('busco pelos posts desse usuário') do
    response = @userService.find_posts_by_id(@user)
    @posts = response.parsed_response['data']
end