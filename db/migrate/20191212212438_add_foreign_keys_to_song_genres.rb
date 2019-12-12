class AddForeignKeysToSongGenres < ActiveRecord::Migration[5.2]
  def change
    add_column :song_genres, :song_id, :integer
    add_column :song_genres, :genre_id, :integer
  end
end
