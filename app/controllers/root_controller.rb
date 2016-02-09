class RootController < ApplicationController
  def index
    @photos = fetch_photos
  end

  private

  def fetch_photos
    Rails.cache.fetch('flickr_photos', expires_in: 1.day) do
      flickr.photosets.getPhotos(photoset_id: 72157664358559861).photo
    end
  end

end
