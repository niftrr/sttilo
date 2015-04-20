class PagesController < ApplicationController

  def home
    if current_user
      redirect_to album_path
    end
    @photos = Photo.where(category: 'Home Page')
  end

  def dashboard
    @photos = Photo.all
  end

  def blog
    @photos = Photo.where(category: 'Blog')
  end

  def about
    @photos = Photo.where(category: 'About')
  end

  def contact
    @photos = Photo.where(category: 'Contact')
  end

  def album
    @photos = Photo.where(category: 'Album')
  end

  def weddings
    @photos = Photo.where(category: 'Weddings')
  end

  def travel
    @photos = Photo.where(category: 'Travel')
  end

  def communion
    @photos = Photo.where(category: 'Communion')
  end
end
