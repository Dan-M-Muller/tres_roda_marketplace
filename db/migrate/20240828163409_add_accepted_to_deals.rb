class AddAcceptedToDeals < ActiveRecord::Migration[7.1]
  def change
    add_column :deals, :accepted?, :boolean, default: false
  end
end
