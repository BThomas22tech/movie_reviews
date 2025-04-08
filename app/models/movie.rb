class Movie < ApplicationRecord
    has_many :review
    has_many :users
end
