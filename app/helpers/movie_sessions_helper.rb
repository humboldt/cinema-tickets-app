module MovieSessionsHelper
  
  def show_all_seats
    all_seats = ''
    (1..@movie_session.hall.seats_quantity).each do |seat_number| 
      if @movie_session.seats["#{seat_number}"] == "taken" 
        seat_status_class = 'seat-taken' 
      elsif @movie_session.seats["#{seat_number}"] == "reserved" 
        seat_status_class = 'seat-reserved' 
      else 
        seat_status_class = 'seat-available' 
      end 
      
      all_seats << link_to(
        (raw "<div class='seat #{seat_status_class}'>#{seat_number}</div>"),
        cinema_hall_movie_session_reserve_ticket_url(
        @cinema, @hall, @movie_session, :seat => seat_number),
        :method => :patch )
    end
    raw all_seats
  end
  
end
