class Map < ApplicationRecord
  validates :name, presence: true
  validates :minimumLevel, presence: true
  validates :map, presence: true

  has_many :farming_data, dependent: :destroy
end
