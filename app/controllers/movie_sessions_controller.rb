class MovieSessionsController < ApplicationController
  load_and_authorize_resource :cinema
  load_and_authorize_resource :hall, through: :cinema
  load_and_authorize_resource :movie_session, through: :hall
  
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @movie_session = MovieSession.new(movie_session_params)
    if @movie_session.save
      redirect_to @movie_session, 
        notice: 'Movie session was successfully created.'
    else
      render :new
    end
  end

  def update
    if @movie_session.update_attributes(movie_session_params)
      redirect_to @movie_session, 
        notice: 'Movie session was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @movie_session.destroy
    redirect_to movie_sessions_url, 
      notice: 'Movie session was successfully destroyed.'
  end

  
  private
  
  def movie_session_params
    params.require(:movie_session).permit(:dates, :movie_id, :hall_id)
  end
  
end
