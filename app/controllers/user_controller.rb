class UserController < ApplicationController

# USER CRUD
get "/users" do
    users = User.all
    users.to_json
  end

post "/users" do
  users = User.create(is_critic: params[:is_critic], username: params[:username], password: params[:password])
  user.tojson
end

end