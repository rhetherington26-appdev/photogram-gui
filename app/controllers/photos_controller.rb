class PhotosController < ApplicationController

  def index
    @photo_list = Photo.all

    render({ :template=>"photo_templates/index.html.erb"})

  end

  def show
    photo_id = params.fetch("photo_id")
    @the_photo = Photo.all.where({ :id => photo_id}).at(0)
    render({ :template=>"photo_templates/show.html.erb"})
  end

  def comment

    photo_id = params.fetch("input_photo_id")
    author_id = params.fetch("input_author_id")
    body = params.fetch("input_body")

    e = Comment.new
    e.photo_id = photo_id
    e.author_id = author_id
    e.body = body
    e.save

    redirect_to("/photos/" + photo_id)


  end



end

