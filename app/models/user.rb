class User < ApplicationRecord
    has_many :reviews
    has_many :movies, through: :reviews
def name
    "#{User.name}"
end
end
