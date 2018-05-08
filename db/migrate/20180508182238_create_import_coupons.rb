class CreateImportCoupons < ActiveRecord::Migration[5.1]
  def change
    create_table :import_coupons do |t|
      t.date :date_import
      t.references :user, foreign_key: true
      t.references :contract, foreign_key: true

      t.timestamps
    end
  end
end
