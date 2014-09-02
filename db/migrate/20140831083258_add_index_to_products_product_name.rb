class AddIndexToProductsProductName < ActiveRecord::Migration
  def change
    add_index :products, :product_name
  end
end
