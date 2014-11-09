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

  def destroy_row
    @the_id = params[:id]
    d = Photo.find_by({ :id => @the_id})
    d.destroy
  end

  def edit_form
    @the_id = params[:id]
    e = Photo.find_by({ :id => @the_id })
    @the_one_photo = e.source
    @the_one_caption = e.caption
  end

  def update_row
    @the_id = params[:id]
    u = Photo.find_by({ :id => @the_id})
    u.source = params[:the_source]
    u.caption = params[:the_caption]
    u.save

  end


end
