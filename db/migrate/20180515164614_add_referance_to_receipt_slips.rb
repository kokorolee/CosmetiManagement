class AddReferanceToReceiptSlips < ActiveRecord::Migration[5.1]
  def change
    add_reference :receipt_slips, :user, index: true
    add_reference :receipt_slips, :contract, index: true
  end
end
