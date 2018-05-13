class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :address, :string
    add_column :users, :phone_no, :string
    add_column :users, :birth_date, :string
  end
end
