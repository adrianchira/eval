class CreateCategories < ActiveRecord::Migration
  def change
    
    create_table :categories do |t|
      t.string :category
      t.string :category_id

      t.timestamps
    end
  end
end
