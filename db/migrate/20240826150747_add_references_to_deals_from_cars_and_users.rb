class AddReferencesToDealsFromCarsAndUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :deals, :user, null: false, foreign_key: true
    add_reference :deals, :car, null: false, foreign_key: true
  end
end
