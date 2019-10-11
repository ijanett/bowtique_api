class CreateCartBowties < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_bowties do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :bowtie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
