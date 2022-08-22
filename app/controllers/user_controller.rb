class UserController < ApplicationController

# USER CRUD
get "/users" do
    users = User.all
    users.to_json
  end
end