class RemoveDatesFromMovieSession < ActiveRecord::Migration[5.0]
  def change
    remove_column :movie_sessions, :dates
  end
end
