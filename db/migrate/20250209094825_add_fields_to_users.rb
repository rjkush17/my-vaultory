class AddFieldsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :userID, :string
    add_column :users, :image, :string
    add_column :users, :oauth, :string
    add_column :users, :authToken, :string
    add_column :users, :role, :string
    add_column :users, :isVerified, :string
  end
end
