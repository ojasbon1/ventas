class Changeprice < ActiveRecord::Migration[6.0]
  def change
    change_column :goods, :price, :decimal
  end
end
