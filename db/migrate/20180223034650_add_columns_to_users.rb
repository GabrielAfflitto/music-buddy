class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :provider, :string
    add_column :users, :oauth_token, :string
    add_column :users, :token_expiraton, :datetime
  end
end
