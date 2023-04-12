class PicturesController < ApplicationController
  # before_action :set_picture, only: %i[ show edit update destroy ]

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    # @picture = current_user.pictures.build(picture_params)
    # if params[:back]
    #   render :new
    # else
      if @picture.save
        redirect_to pictures_path, notice: "投稿を作成しました！"
      else
        render :new
      end
    # end
  end

  def show
    @picture = Picture.find(params[:id])
    # @favorite = current_user.favorites.find_by(picture_id: @picture.id)
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :content, :image_cache)
  end

end
