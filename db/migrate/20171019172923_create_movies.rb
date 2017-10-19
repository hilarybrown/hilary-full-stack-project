class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :description
      t.string :was_watched
      t.integer :rating
      t.string :re_watch

      t.timestamps
    end
  end
end
