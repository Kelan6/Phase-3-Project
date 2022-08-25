class Review < ActiveRecord::Base
    belongs_to :movie
    belongs_to :user


def self.by_score
    order(score: :desc)
end

def self.by_time
    order(updated_at: :desc, created_at: :desc)
end

end