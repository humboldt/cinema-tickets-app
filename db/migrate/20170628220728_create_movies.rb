class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name, null: false, default: ""
      t.text :picture_url
      t.text :description, null: false

      t.timestamps
    end
  end
end
