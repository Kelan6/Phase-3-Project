class UserController < ApplicationController

  # USER CRUD
  get "/users" do
      users = User.all
      users.to_json
    end

  get "/users/:id" do
      users = User.find(params[:id])
      users.to_json
  end

  post "/users" do
    users = User.create(is_critic: params[:is_critic], username: params[:username], password: params[:password])
    user.tojson
  end

  patch "/users/:id" do
    user = User.find(params[:id])
    user.update(is_critic: params[:is_critic], username: params[:username], password: params[:password])
    user.to_json
  end

  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

end