class TicketsController < ApplicationController
  load_and_authorize_resource :cinema
  load_and_authorize_resource :hall, through: :cinema
  load_and_authorize_resource :movie_session, through: :hall
  authorize_resource :class => false
  
  def reserve_ticket
  end
  
  def buy_ticket
    @movie_session.update(seats: @movie_session.seats.merge!(
      {params[:seat] => "taken"} ))
    render pdf:       "ticket",
           template:  "ticket.html.erb"
  end
end
