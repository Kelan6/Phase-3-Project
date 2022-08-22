class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # BASE URL
  get "/" do
    Review.all.to_json(include: [:movie, :user])
  end
end
