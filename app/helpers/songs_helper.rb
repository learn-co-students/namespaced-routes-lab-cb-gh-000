module SongsHelper

  def sort_artists(songs)
    if Preference.last.song_sort_order == "DESC"
      songs.order("title DESC")
    else
      songs.order("title ASC")
    end
  end

end
