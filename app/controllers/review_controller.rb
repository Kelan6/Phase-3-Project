class ReviewController < ApplicationController

# REVIEW CRUD
get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end
end