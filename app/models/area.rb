class Area < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '大阪' },
      { id: 3, name: '兵庫' },
      { id: 4, name: '京都' },
      { id: 5, name: '滋賀' },
      { id: 6, name: '和歌山' },
      { id: 7, name: '奈良' },
      { id: 8, name: '東京' },
      { id: 9, name: '神奈川' },
      { id: 10, name: '埼玉' }
    ]

    include ActiveHash::Associations
    has_many :shops
    end