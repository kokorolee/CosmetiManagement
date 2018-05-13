class AddReferenceToProducts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :products, :category, index: true
    add_reference :products, :category, index:true
  end
end
