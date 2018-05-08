class AddReferenceToContact < ActiveRecord::Migration[5.1]
  def change
    add_reference :contracts, :contract_detail, index: true
  end
end
