class CreateFarmingData < ActiveRecord::Migration[7.1]
  def change
    create_table :farming_data do |t|
      t.integer :expHour
      t.integer :mesoHour
      t.integer :enemyHour
      t.references :characters, null: false, foreign_key: true

      t.timestamps
    end
  end
end
