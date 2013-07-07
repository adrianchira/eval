class DropEvalists < ActiveRecord::Migration
  def up
  	drop_table :evalists
  end

  def down
  end
end
