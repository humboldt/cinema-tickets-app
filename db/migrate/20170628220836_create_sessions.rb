class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :dates, null: false, default: ""
      t.references :hall, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
