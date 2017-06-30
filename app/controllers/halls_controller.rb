class HallsController < ApplicationController
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
    @hall = Hall.new(hall_params)
    if @hall.save
      redirect_to @hall, notice: 'Hall was successfully created.'
    else
      render :new
    end
  end

  def update
    if @hall.update_params(hall_params)
      redirect_to @hall, notice: 'Hall was successfully updated.'
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
    params.require(:hall).permit(:name, :cinema_id)
  end
  
end
