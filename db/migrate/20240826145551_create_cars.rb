class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :brand, null: false
      t.string :model, null: false
      t.integer :km, null: false
      t.datetime :year, null: false
      
      t.timestamps
    end
  end
end
