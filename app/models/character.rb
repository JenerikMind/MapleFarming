class Character < ApplicationRecord
  validates :classname, presence: true
  validates :level, presence: true
  validates :range, presence: true

  has_many :farming_data, dependent: :destroy
end
