class Api::V1::MenuItemsController < ApplicationController

    def index
        menuitems = MenuItems.all
        render json: menuitems
    end

    def show
        menuitem = MenuItems.find(params[:id])
        render json: menuitem
    end

end
