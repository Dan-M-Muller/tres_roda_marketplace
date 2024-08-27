class ChangeYearToStringCars < ActiveRecord::Migration[7.1]
  def change
    change_table :cars do |t|
      t.change :year, :string
    end
  end
end
