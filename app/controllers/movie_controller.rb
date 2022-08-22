class MovieController < ApplicationController

# MOVIE CRUD
get "/movies" do
    movies = Movie.all
    movies.to_json
  end
end