class CreateBowties < ActiveRecord::Migration[6.0]
  def change
    create_table :bowties do |t|
      t.string :name
      t.string :color
      t.integer :size
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
