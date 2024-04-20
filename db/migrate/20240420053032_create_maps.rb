class CreateMaps < ActiveRecord::Migration[7.1]
  def change
    create_table :maps do |t|
      t.string :name
      t.integer :minimumLevel
      t.boolean :prerequisite

      t.timestamps
    end
  end
end
