class HallsController < ApplicationController
  load_and_authorize_resource :cinema
  load_and_authorize_resource :hall, through: :cinema

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @hall = Hall.new(hall_params.merge(cinema: @cinema))
    if @hall.save
      redirect_to @cinema, notice: 'Hall was successfully created.'
    else
      render :new
    end
  end

  def update
    if @hall.update_attributes(hall_params)
      redirect_to @cinema, notice: 'Hall was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @hall.destroy
    redirect_to halls_url, notice: 'Hall was successfully destroyed.'
  end

  
  private

  def hall_params
    params.require(:hall).permit(:name)
  end
  
end
