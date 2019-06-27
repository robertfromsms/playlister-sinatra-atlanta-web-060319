class CreateSongGenres < ActiveRecord::Migration[5.2]
  def change
  	create_table :song_genres do |t|
      t.belongs_to :artist, index: true
      t.integer :genre_id
    end
  end
end
