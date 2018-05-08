class CreateDeliverySlipDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_slip_details do |t|
      t.integer :amount
      t.string :unit
      t.belongs_to :product, foreign_key: true
      t.belongs_to :delivery_slip, foreign_key: true

      t.timestamps
    end
  end
end
