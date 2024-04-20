class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :classname
      t.integer :level
      t.integer :range

      t.timestamps
    end
  end
end
