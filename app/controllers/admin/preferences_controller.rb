class Admin::PreferencesController < ApplicationController

  def index
    if Preference.count == 0
      @pref = Preference.create
    else
      @pref = Preference.last
    end

  end

  def update
    @pref = Preference.last
    @pref.update(post_params)
    redirect_to admin_preferences_path
  end

  private

  def post_params
    params[:preference].permit(:song_sort_order, :artist_sort_order, :allow_create_artists, :allow_create_songs)
  end
end

