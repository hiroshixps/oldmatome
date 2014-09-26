class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :brand
      t.string :model
      t.string :series
      t.integer :new_price
      t.integer :amazon_price
      t.integer :rakuten_price
      t.integer :yahoo_price
      t.string :ebay_price
      t.string :img_url
      t.string :kakaku_url
      t.text :amazon_url
      t.text :rakuten_url
      t.text :yahoo_url
      t.text :ebay_url
      t.string :l_category
      t.string :m_category
      t.string :s_category
      t.string :new_url
      t.text :spec
      t.timestamps
    end
  end
end
