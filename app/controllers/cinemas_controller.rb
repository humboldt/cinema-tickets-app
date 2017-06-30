class CinemasController < ApplicationController
  load_and_authorize_resource
  
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @cinema = Cinema.new(cinema_params.merge(user: current_user))
    if @cinema.save
      redirect_to @cinema, notice: 'Cinema was successfully created.'
    else
      render :new
    end
  end

  def update
    if @cinema.update_params(cinema_params)
      redirect_to @cinema, notice: 'Cinema was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @cinema.destroy
    redirect_to cinemas_url, notice: 'Cinema was successfully destroyed.'
  end


  private

  def cinema_params
    params.require(:cinema).permit(:name, :address)
  end
  
end
