class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :type
      t.string :usage
      t.integer :price
      t.string :unit
      t.date :date_import
      t.date :date_export
      t.integer :number_import
      t.integer :number_export
      t.integer :number_stock

      t.timestamps
    end
  end
end
