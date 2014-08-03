class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :model_number
      t.string :img_url
      t.integer :price
      t.string :detail_url
      t.timestamps
    end
  end
end
