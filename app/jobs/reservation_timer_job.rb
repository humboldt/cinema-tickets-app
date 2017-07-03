class ReservationTimerJob < ApplicationJob
  queue_as :default

  def perform(movie_session, seat)
    if movie_session.seats[seat] == "reserved"
      movie_session.update(
        seats: movie_session.seats.merge!( {seat => "available"} ),
        reserved_seats: movie_session.reserved_seats.except!(seat) )
    end
  end
end
