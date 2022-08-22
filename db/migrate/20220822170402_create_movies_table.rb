class CreateMoviesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :thumbnail_url
      t.string :director
      t.string :description
      t.float :budget
      t.float :box_office
    end
  end
end
