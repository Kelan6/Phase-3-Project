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

end