class AddFieldToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :title, :string
    add_column :users, :role, :string
    add_column :users, :department, :string
    add_column :users, :phone, :string
    add_column :users, :office_hours, :string
    add_column :users, :bio, :string
  end
end
