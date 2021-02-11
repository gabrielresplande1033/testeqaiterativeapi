Então('valido o status code {int}') do |statusCode|
    expect(@response.code).to eq(statusCode)
  end
  
Então('valido que a busca retornou elementos que contenham o nome do usuário') do
  usuarios = @response.parsed_response['data']
  
  usuarios.each do |usuario|
    expect(usuario['name'].to_s).to include @busca_usuario
  end

end

Então('valido os posts para esse usuário') do
    @posts.each do |post|
        expect(post['user_id']).to eql(@user)
    end
end