class CreateSCategories < ActiveRecord::Migration
  def change
    create_table :s_categories do |t|
      t.string :s_category
      t.integer :l_id
      t.integer :m_id

      t.timestamps
    end
  end
end
