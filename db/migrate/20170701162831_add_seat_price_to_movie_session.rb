class AddSeatPriceToMovieSession < ActiveRecord::Migration[5.0]
  def change
    add_monetize :movie_sessions, :seat_price
  end
end
