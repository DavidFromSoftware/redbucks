class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :texture_number
      t.string :flavour_try
      t.boolean :cream

      t.timestamps null: false
    end
  end
end
