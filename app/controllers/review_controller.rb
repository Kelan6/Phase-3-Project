class ReviewController < ApplicationController

  # REVIEW CRUD
  get "/reviews" do
      reviews = Review.all
      reviews.to_json
  end

  get "/reviews/:id" do
      reviews = Review.find(params[:id])
      reviews.to_json
  end

  post "/reviews" do
      reviews = Review.create(score: :score, comment: :comment, user_id: :user_id, movie_id: :movie_id, timestamps: :timestamps)
  end

  patch "/reviews/:id" do
      review=Review.find(params[:id])
      review.update(score: params[:score], comment: params[:comment])
      review.to_json
  end

  delete '/reviews/:id' do
      review=Review.find(params[:id])
      review.destroy
      review.to_json
  end

    # Method request

  get '/reviews/review/score' do
      by_score = Review.by_score
      by_score.to_json
  end

  get '/reviews/movie/:id' do
    review=Review.movie.find(params[:id])
    review.to_json
  end
  
end