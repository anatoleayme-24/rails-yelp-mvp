class CreateRestaurants < ActiveRecord::Migration[8.1]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :address
      t.text :category
      t.integer :phone_number

      t.timestamps
    end
  end
end
