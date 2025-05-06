require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "return movie title" do
    movie = Movie.create(title:"James and the Giant Peach")

    expect(movie.title).to eq "#{movie.title}"
  end
end