class Genre < ActiveHash::Base
  include ActiveHash::Associations
  has_many :shops
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: 'ファストフード' },
      { id: 3, name: 'カフェ' },
      { id: 4, name: '漫画喫茶' },
      { id: 5, name: 'カラオケ' },
      { id: 6, name: 'コワーキングスペース' },
      { id: 7, name: 'その他' }
    ]
    end