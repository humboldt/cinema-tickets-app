class CreateCinemas < ActiveRecord::Migration[5.0]
  def change
    create_table :cinemas do |t|
      t.string :name, null: false, default: ""
      t.string :address, null: false, default: ""
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
