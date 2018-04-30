class CreateAgencies < ActiveRecord::Migration[5.1]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :address
      t.string :phone_no
      t.string :tax_code
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
