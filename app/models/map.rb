class Map < ApplicationRecord
  validates :name, presence: true
  validates :minimumLevel, presence: true
  validates :prerequisite, presence: true
end
