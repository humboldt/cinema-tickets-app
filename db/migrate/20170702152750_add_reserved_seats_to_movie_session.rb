class AddReservedSeatsToMovieSession < ActiveRecord::Migration[5.0]
  def change
    add_column :movie_sessions, :reserved_seats, :text
  end
end
