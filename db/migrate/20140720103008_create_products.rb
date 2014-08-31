class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :brand
      t.string :model
      t.string :series
      t.integer :new_price
      t.integer :old_price
      t.string :img_url
      t.string :kakaku_url
      t.string :l_category
      t.string :m_category
      t.string :s_category
      t.text :spec
      t.timestamps
    end
  end
end
