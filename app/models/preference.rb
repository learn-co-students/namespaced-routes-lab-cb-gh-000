class Preference < ActiveRecord::Base
  def self.allow_create_songs
    Preference.last.allow_create_songs
  end

  def self.allow_create_artists
    Preference.last.allow_create_artists
  end

end
