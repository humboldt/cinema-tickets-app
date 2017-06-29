class MovieSessionsController < ApplicationController
  before_action :set_movie_session, only: [:show, :edit, :update, :destroy]

  # GET /movie_sessions
  # GET /movie_sessions.json
  def index
    @movie_sessions = MovieSession.all
  end

  # GET /movie_sessions/1
  # GET /movie_sessions/1.json
  def show
  end

  # GET /movie_sessions/new
  def new
    @movie_session = MovieSession.new
  end

  # GET /movie_sessions/1/edit
  def edit
  end

  # POST /movie_sessions
  # POST /movie_sessions.json
  def create
    @movie_session = MovieSession.new(movie_session_params)

    respond_to do |format|
      if @movie_session.save
        format.html { redirect_to @movie_session, notice: 'Movie session was successfully created.' }
        format.json { render :show, status: :created, location: @movie_session }
      else
        format.html { render :new }
        format.json { render json: @movie_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_sessions/1
  # PATCH/PUT /movie_sessions/1.json
  def update
    respond_to do |format|
      if @movie_session.update(movie_session_params)
        format.html { redirect_to @movie_session, notice: 'Movie session was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_session }
      else
        format.html { render :edit }
        format.json { render json: @movie_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_sessions/1
  # DELETE /movie_sessions/1.json
  def destroy
    @movie_session.destroy
    respond_to do |format|
      format.html { redirect_to movie_sessions_url, notice: 'Movie session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_session
      @movie_session = MovieSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_session_params
      params.require(:movie_session).permit(:dates, :movie_id)
    end
end
