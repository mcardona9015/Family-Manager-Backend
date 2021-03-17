class PhotosController < ApplicationController

    def create
        photo_params = params.permit(:photo_album_id, :title, :public_id, :url, :favorite)
        photo = Photo.create(photo_params)  
        render json: photo    
    end

    private

    # def photo_params(*args)
    #     params.require(:photo).permit(*args)
    # end
end
