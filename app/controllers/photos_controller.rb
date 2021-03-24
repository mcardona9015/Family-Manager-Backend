class PhotosController < ApplicationController
    before_action :authenticate, only: [:index]
    def create
        photo_params = params.permit(:photo_album_id, :title, :public_id, :url, :favorite)
        photo = Photo.create(photo_params)  
        render json: photo    
    end

    def index
        photos = @current_user.photos
        render json: photos
    end

    def update
        # byebug
        photo = Photo.find(params[:id])
        photo.update(params.require(:photo).permit(:favorite))
        render json: photo
    end

    def destroy
        photo = Photo.find(params[:id])
        photo.destroy
    end

    private

    # def photo_params(*args)
    #     params.require(:photo).permit(*args)
    # end
end
