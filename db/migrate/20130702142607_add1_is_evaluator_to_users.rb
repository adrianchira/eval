class Add1IsEvaluatorToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :is_admin, :boolean, :default => false
  	add_column :users, :is_evaluator, :boolean, :default => false
  	add_column :users, :inactive, :boolean, :default => false
  end

end
