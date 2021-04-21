class Shop < ApplicationRecord
    has_one_attached :image
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :area

    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :genre

    validates :title, :text, presence: true
    validates :genre_id, numericality: { other_than: 1 } 
end