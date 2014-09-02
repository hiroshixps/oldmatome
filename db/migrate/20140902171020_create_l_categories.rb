class CreateLCategories < ActiveRecord::Migration
  def change
    create_table :l_categories do |t|
      t.string :l_category

      t.timestamps
    end
  end
end
