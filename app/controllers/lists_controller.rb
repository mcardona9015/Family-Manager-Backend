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

    def update
        # byebug
        list = List.find(params[:id])
        list.update(params.require(:list).permit(:title))
        render json: list
    end

    def create_list_item
        # byebug
        list_item = ListItem.create(params.require(:list).permit(:list_id, :content, :complete))
        render json: list_item
    end

    def delete_list_item
        ListItem.find_by(params.permit(:id)).destroy
    end

    def update_list_item
        # byebug
        list_item = ListItem.find(params[:id])
        list_item.update(params.require(:list).permit(:content, :complete))
        render json: list_item
    end
    

    # def update
    #     # byebug
    #     photo = Photo.find(params[:id])
    #     photo.update(params.require(:photo).permit(:favorite))
    #     render json: photo
    # end
end
