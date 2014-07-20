class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :model_number
      t.string :brand
      t.integer :price

      t.timestamps
    end
  end
end
