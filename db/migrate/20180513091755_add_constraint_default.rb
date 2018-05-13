class AddConstraintDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default :contract_details, :unit_price, 'vnđ'
    change_column_default :delivery_slip_details, :unit, 'vnđ'
    change_column_default :products, :unit, 'vnđ'
  end
end
