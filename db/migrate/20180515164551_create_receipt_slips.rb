class CreateReceiptSlips < ActiveRecord::Migration[5.1]
  def change
    create_table :receipt_slips do |t|
      t.date :date_receipt

      t.timestamps
    end
  end
end
