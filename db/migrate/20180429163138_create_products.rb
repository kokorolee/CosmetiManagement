class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, limit: 50
      t.string :type, limit: 30
      t.string :uses, limit: 100
      t.decimal :price
      t.string :unit, limit: 20
      t.date :date_import
      t.date :date_export
      t.integer :number_import
      t.integer :number_export
      t.integer :number_inventory
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
