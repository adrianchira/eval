class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.integer :year
      t.integer :year_id

      t.timestamps
    end
  end
end
