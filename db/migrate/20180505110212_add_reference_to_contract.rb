class AddReferenceToContract < ActiveRecord::Migration[5.1]
  def change
    add_reference :contracts, :user, index: true
  end
end
