class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # BASE URL
  get "/" do
    reviews = Review.all.by_time
    Review.all.to_json(include: [:movie, :user])
  end
end
