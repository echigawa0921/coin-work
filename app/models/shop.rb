class Shop < ApplicationRecord

    has_one_attached :image
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :area

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :genre

end