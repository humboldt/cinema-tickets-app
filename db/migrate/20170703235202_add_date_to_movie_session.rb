class AddDateToMovieSession < ActiveRecord::Migration[5.0]
  def change
    add_column :movie_sessions, :date, :datetime
  end
end
