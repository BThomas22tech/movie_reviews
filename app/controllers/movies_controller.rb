class MoviesController < ApplicationController

    def index
        @movies = Movie.first
    end

end