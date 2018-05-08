class CreateDeliverySlips < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_slips do |t|
      t.date :date_deliver
      t.date :date_received
      t.decimal :total_money

      t.timestamps
    end
  end
end
