class SongsController < ApplicationController
  before_action :set_song, only: [:new, :show, :edit, :update, :destroy]
  def index
    @songs = Song.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    @song = Song.new(song_params)
    
    if @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @song.update(song_params)
      redirect_to song_path(@song)
    else
      render :edit
    end
  end
  
  def delete
    
  end
  
  private
  
  def set_song
    @song = Song.find(params[:id])
  end
  
  def song_params
    params.permit(:title, :released, :release_year, :artist_name, :genre)
  end
end
