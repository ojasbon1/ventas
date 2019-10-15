class Goods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.string :name
      t.text :description
      t.string :price
      
      t.timestamps
    end
  end
end
