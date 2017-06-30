class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  
  
  private
  
  def current_ability
    @current_ability ||= Ability.new(current_user, params[:cinema_id])
  end
  
end
