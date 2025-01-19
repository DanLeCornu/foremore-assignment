class ChangeCostToFloat < ActiveRecord::Migration[8.0]
  def change
    change_column :deliveries, :cost, :float
  end
end
