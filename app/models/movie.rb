class Movie < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    def movie
       "#{Movie.title}"
    end
end
