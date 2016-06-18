class CreateCafes < ActiveRecord::Migration
  def change
    create_table :cafes do |t|
      t.string :flavor
      t.integer :texture
      t.boolean :cream

      t.timestamps null: false
    end
  end
end
