class CreateMCategories < ActiveRecord::Migration
  def change
    create_table :m_categories do |t|
      t.string :m_category
      t.integer :l_id

      t.timestamps
    end
  end
end
