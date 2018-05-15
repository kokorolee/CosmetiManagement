class ChangeColumnNameDeliverSlips < ActiveRecord::Migration[5.1]
  def change
    rename_column :delivery_slip_details, :unit, :unit_price
  end
end
