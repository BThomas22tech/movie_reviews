require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "return movie title" do
    movie = Movie.create(title:"James and the Giant Peach")

    expect(movie.title).to eq "#{movie.title}"
  end
  it "get all movies" do
    movie1 = Movie.create(title:"James and the Giant Peach")
    movie2 = Movie.create(title:"Matilda")

    movies = Movie.all
    expect(movies).to include(movie1,movie2)
    expect(movies.count). to eq 2
  end
end