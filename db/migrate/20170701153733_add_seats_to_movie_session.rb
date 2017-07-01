class AddSeatsToMovieSession < ActiveRecord::Migration[5.0]
  def change
    add_column :movie_sessions, :seats, :text
  end
end
