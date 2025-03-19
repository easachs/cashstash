class AddPlaidToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :plaid_access_token, :string
    add_column :users, :plaid_item_id, :string
  end
end
