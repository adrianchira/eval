class DropColumns < ActiveRecord::Migration
  def change
  	remove_column :users, :is_admin
  	remove_column :users, :is_evaluator
  	remove_column :users, :inactive
  end

  
end
