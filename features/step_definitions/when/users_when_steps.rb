Quando('busco por esse usuário') do
    @response = @user_service.find_by_name(@busca_usuario)
end

Quando('busco pelos posts desse usuário') do
    response = @user_service.find_posts_by_id(@user)
    @posts = response.parsed_response['data']
end