class CreateContractDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :contract_details do |t|
      t.integer :amount
      t.integer :unit_price

      t.belongs_to :product, index: true
      t.belongs_to :provider, index: true

      t.timestamps
    end
  end
end
