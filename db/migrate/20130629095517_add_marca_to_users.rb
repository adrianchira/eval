class AddMarcaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :marca, :string
  end
end
