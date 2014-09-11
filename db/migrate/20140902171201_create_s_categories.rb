class CreateSCategories < ActiveRecord::Migration
  def change
    create_table :s_categories do |t|
      t.string :s_category
      t.integer :m_category_id

      t.timestamps
    end
  end
end
