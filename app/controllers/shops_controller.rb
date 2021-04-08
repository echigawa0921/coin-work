class ShopsController < ApplicationController
    def index
        @shops = Shop.all
    end
    def new
        @shop = Shop.new
    end

    def create
      @shop = Shop.create(shop_params)
      if @shop.save
        redirect_to controller: :shops, action: :index
      else
        render "new"
      end
    end

    def show
        @shop = Shop.find(params[:id])
    end
    
      private
      def shop_params
        params.require(:shop).permit(:name, :title, :content,:open_hour,:regular_holiday,:telephone,
                                     :address,:nearest_station,:capacity,:private_room,:wifi,:power_supply,
                                     :genre,:area,:image)
      end
end
