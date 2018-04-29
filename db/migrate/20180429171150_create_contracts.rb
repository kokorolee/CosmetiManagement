class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.date :date
      t.decimal :total
      t.belongs_to :user, foreign_key: true
      t.belongs_to :provider, foreign_key: true

      t.timestamps
    end
  end
end
