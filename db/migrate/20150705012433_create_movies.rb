class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :description
      t.string :released
      t.string :running_time, default: 0
      t.string :rating
      t.string :image_url

      t.timestamps null: false
    end
  end
end
