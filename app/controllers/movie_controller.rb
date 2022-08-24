class MovieController < ApplicationController

  # MOVIE CRUD

  #get
  get "/movies" do
      movies = Movie.all
      movies.to_json(include: :reviews)
  end

  get "/movies/:id" do
      movies = Movie.find(params[:id])
      movies.to_json
  end

  get "/movies/:id/reviews/scores" do
    array = []
    Movie.find(params[:id]).reviews.count.times do |x|
        array << Movie.find(params[:id]).reviews[x].score
    end
    array.to_json
  end


  #post
  post "/movies" do
      newmovie = Movie.create(title: params[:title], thumbnail_url: params[:thumbnail_url], director: params[:director], description: params[:description], budget: params[:budget], box_office: params[:box_office])
      newmovie.to_json
  end

  #patch
  patch "/movies/:id" do
      movie = Movie.find(params[:id])
      movie.update(box_office: params[:box_office])
      movie.to_json
  end

  #delete
  delete "/movies/:id" do
      movie = Movie.find(params[:id])
      movie.destroy
      movie.to_json
  end
  
end