class AddReferenceProviderToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :provider, index: true
  end
end
