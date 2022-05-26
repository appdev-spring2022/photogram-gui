class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all
    @list_of_photos = matching_photos.order({:created_at => :desc})
    render({ :template => "photo_templates/index.html.erb" })
  end

  def show
    url_photo = params.fetch("photo_name")

    matching_photo = User.where(:username => url_photo)

    @the_photo = matching_photo.at(0)

    render({ :template => "photo_templates/show.html.erb" })
  end

end
