class AddColumnsToDeals < ActiveRecord::Migration[7.1]
  def change
    add_column :deals, :price, :float
    add_column :deals, :rented_untill, :datetime
    add_column :deals, :rent?, :boolean
  end
end
