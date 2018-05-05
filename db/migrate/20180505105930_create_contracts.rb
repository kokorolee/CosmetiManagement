class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.date :date_create
      t.decimal :total_money
      t.belongs_to :provider, index: true
      t.timestamps
    end
  end
end
