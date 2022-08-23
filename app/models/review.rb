class Review < ActiveRecord::Base
    belongs_to :movie
    belongs_to :user


def self.by_score
    order(score: :desc)
end




end