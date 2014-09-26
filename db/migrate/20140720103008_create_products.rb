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
      t.integer :ebay_price
      t.string :img_url
      t.string :kakaku_url
      t.string :amazon_url
      t.string :rakuten_url
      t.string :yahoo_url
      t.string :ebay_url
      t.string :amazon_list_url
      t.string :rakuten_list_url
      t.string :yahoo_list_url
      t.string :ebay_list_url
      t.string :l_category
      t.string :m_category
      t.string :s_category
      t.string :new_url
      t.text :spec
      t.timestamps
    end
  end
end
