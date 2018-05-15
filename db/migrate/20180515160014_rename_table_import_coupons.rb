class RenameTableImportCoupons < ActiveRecord::Migration[5.1]
  def up
    rename_table :import_coupons, :receipt_slips
  end

  def down
    rename_table :receipt_slips, :import_coupons
  end
end
