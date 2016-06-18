class NameCafe < ActiveRecord::Migration
  def change
  	add_column :cafes, :name, :string
  end
end
