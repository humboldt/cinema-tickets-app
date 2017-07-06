class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
    @movies = Movie.all
    @movie_sessions = MovieSession.includes(:movie, hall: [:cinema]).all
    if current_user
      @my_cinemas = current_user.cinemas
      @users = User.all if current_user.admin_role?
    end
  end
  
end
