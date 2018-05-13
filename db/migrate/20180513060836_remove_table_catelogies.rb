class RemoveTableCatelogies < ActiveRecord::Migration[5.1]
  def change
    drop_table :catelogies
  end
end
