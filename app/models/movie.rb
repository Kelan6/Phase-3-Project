class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews


    def self.by_director
        order(director: :asc)
    end
end