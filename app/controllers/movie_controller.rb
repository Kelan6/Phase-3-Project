class MovieController < ApplicationController

# MOVIE CRUD
get "/movies" do
    movies = Movie.all
    movies.to_json
  end

get "/movies/:id" do
    movies = Movie.find(params[:id])
    movies.to_json
end

post "/movies" do
  movies = Movie.create(title: params[:title], thumbnail_url: params[:thumbnail_url], director: params[:director], description: params[:description], budget: params[:budget], box_office: params[:box_office])
  movies.to_json
end

patch "/movies/:id" do
  movie = Movie.find(params[:id])
  movie.update(box_office: params[:box_office])
  movie.to_json
end

delete "/movies/:id" do
  movie = Movie.find(params[:id])
  movie.destroy
  movie.to_json
end

# METHOD REQUEST

get '/movies/movie/director' do
  by_director = Movie.by_director
  by_director.to_json
end
end