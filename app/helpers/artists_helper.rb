module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def sort_artists(artists)
    if Preference.last.artist_sort_order == "DESC"
      artists.order("name DESC")
    else
      artists.order("name ASC")
    end
  end

end
