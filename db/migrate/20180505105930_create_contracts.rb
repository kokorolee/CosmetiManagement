class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.date :date_create
      t.decimal :total_money
      t.references :user, foreign_key: true
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
