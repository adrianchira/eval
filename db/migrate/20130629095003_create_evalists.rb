class CreateEvalists < ActiveRecord::Migration
  def change
    create_table :evalists do |t|
      t.integer :evaluator_id
      t.integer :user_id

      t.timestamps
    end
  end
end
