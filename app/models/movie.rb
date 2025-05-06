class Movie < ApplicationRecord
    has_many :review
    has_many :users, through: :reviews

    def movie
       "#{Movie.title}"
    end
end
