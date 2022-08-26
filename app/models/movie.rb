class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews


    def self.by_director
        order(director: :asc)
    end
    
    def self.by_time
        order(updated_at: :desc, created_at: :desc)
    end
end