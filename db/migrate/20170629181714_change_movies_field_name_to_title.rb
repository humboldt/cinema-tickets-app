class ChangeMoviesFieldNameToTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :movies, :name, :title
  end
end
