class AddReferanceToReceiptSlips < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :receipt_slip, index: true
    add_reference :contracts, :receipt_slip, index: true
  end
end
