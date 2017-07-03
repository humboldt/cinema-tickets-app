module MovieSessionsHelper
  
  def show_all_seats
    all_seats = ''
    (1..@movie_session.hall.seats_quantity).each do |seat_number| 
      if @movie_session.seats["#{seat_number}"] == "taken" 
        seat_status_class = 'seat-taken' 
      elsif user_signed_in? && 
        @movie_session.reserved_seats["#{seat_number}"] == current_user.id
        seat_status_class = 'seat-reserved-by-me'
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
  
  def show_buy_form
    if @movie_session.seats[params[:seat]] == "taken"
      return (
        raw '<p class="seat-taken-message">This seat is already taken!</p>')
    elsif @movie_session.seats[params[:seat]] == "reserved" &&
      @movie_session.reserved_seats[params[:seat]] != current_user.id
      return (
        raw '<p class="seat-reserved-message">This seat is currently reserved!
        But it might be available shortly...</p>')
    else
      return (raw "
        <p><strong>seat: </strong>#{params[:seat]}</p>
        <p><strong>price: </strong>
          #{humanized_money_with_symbol @movie_session.seat_price}
        </p>
        #{button_to 'Buy!', 
          cinema_hall_movie_session_buy_ticket_url(
          @cinema, @hall, @movie_session,:seat => params[:seat]), 
          :method => :patch, :class => 'btn btn-primary'}
      ")
    end
  end
end
