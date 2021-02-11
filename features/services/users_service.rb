class User
    include HTTParty
    base_uri "https://gorest.co.in/public-api"

    def find_all
      self.class.get("/users")
    end
  
    def find_by_name(name)
      self.class.get("/users?name=#{name}")
    end 

    def find_posts_by_id(id)
      self.class.get("/users/#{id}/posts")
    end

end