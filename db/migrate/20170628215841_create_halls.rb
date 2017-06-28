class CreateHalls < ActiveRecord::Migration[5.0]
  def change
    create_table :halls do |t|
      t.string :name, null: false, default: ""
      t.references :cinema, foreign_key: true

      t.timestamps
    end
  end
end
