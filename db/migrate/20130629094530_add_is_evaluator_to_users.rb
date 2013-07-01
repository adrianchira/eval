class AddIsEvaluatorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_evaluator, :boolean
  end
end
