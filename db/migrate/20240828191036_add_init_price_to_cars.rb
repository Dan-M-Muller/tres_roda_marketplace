class AddInitPriceToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :initial_price, :integer
  end
end
