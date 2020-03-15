class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def verify_new_artist_access
    preference = Preference.first

    unless preference.allow_create_artists
      redirect_to artists_path
    end
  end

  def verify_new_song_access
    preference = Preference.first

    unless preference.allow_create_songs
      redirect_to songs_path
    end
  end
end
