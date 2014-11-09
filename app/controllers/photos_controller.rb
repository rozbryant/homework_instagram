class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @the_id = params[:id]
    z = Photo.find_by({ :id => @the_id })
    @the_one_photo = z.source
    @the_one_caption = z.caption

  end

  def create_row
    n = Photo.new
    n.caption = params[:the_caption]
    n.source = params[:the_source]
    n.save

  end



end
