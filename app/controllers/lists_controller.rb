class ListsController < ApplicationController
    before_action :authenticate, only: [:create, :index]
    def create
        list = List.create(user_id: @current_user.id)  
        render json: list    
    end

    def index
        lists = @current_user.lists
        render json: lists
    end

    def create_list_item
        # byebug
        list_item = ListItem.create(params.require(:list).permit(:list_id, :content, :complete))
        render json: list_item
    end
    

    # def update
    #     # byebug
    #     photo = Photo.find(params[:id])
    #     photo.update(params.require(:photo).permit(:favorite))
    #     render json: photo
    # end
end
