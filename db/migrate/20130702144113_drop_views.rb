class DropViews < ActiveRecord::Migration
  def up
  	drop_table :views
  end

end
