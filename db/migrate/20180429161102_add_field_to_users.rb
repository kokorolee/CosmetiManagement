class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :birthday, :date
    add_column :users, :address, :string
    add_column :users, :phone_no, :string
  end
end
