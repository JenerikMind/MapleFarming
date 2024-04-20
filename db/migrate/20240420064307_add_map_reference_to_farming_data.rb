class AddMapReferenceToFarmingData < ActiveRecord::Migration[7.1]
  def change
    add_reference :farming_data, :map, null: false, foreign_key: true
  end
end
