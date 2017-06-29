class CreateMovieSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_sessions do |t|
      t.string :dates, null: false
      t.references :movie, foreign_key: true
      t.references :hall, foreign_key: true

      t.timestamps
    end
  end
end
