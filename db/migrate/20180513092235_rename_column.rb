class RenameColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :contract_details, :unit_price, :unit

  end
end
