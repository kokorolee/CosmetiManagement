class EditTableProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :catelogy, index: true
    remove_column :products, :usage
  end
end
