class ShopsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
    def index
        @shops = Shop.all
    end
    def new
        @shop = Shop.new
    end

    def list
      @shops = Shop.all
    end

    def area_osaka
      @shops = Shop.where(area_id: 2)
    end

    def area_hyogo
      @shops = Shop.where(area_id: 3)
    end

    def area_kyoto
      @shops = Shop.where(area_id: 4)
    end

    def genre_fastfood
      @shops = Shop.where(genre_id: 2)
    end

    def genre_cafe
      @shops = Shop.where(genre_id: 3)
    end

    def genre_manga
      @shops = Shop.where(genre_id: 4)
    end

    def genre_karaoke
      @shops = Shop.where(genre_id: 5)
    end

    def genre_space
      @shops = Shop.where(genre_id: 6)
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
                                     :address,:nearest_station,:capacity,:private_room,:wifi,:power_supply,:jusyo,
                                     :genre_id,:area_id,:image)
      end

      def move_to_index
        unless user_signed_in?
          redirect_to  '/users/sign_in'
        end
      end
end

