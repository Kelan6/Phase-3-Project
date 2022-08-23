class Review < ActiveRecord::Base
    belongs_to :movie
    belongs_to :user


def self.sort_by_score
    all.order(score: :desc)
end




end