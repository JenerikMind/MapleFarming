class Character < ApplicationRecord
  has_many :farming_data, dependent: :destroy
  validates :classname, presence: true
  validates :level, presence: true
  validates :range, presence: true
end
