class Shop < ApplicationRecord

    has_one_attached :image
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :area

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :genre

    def self.search(search)
        if search != ""
          Shop.where(`text LIKE(?)`, "%#{search}%")
        else
          Shop.all
        end
     end
end