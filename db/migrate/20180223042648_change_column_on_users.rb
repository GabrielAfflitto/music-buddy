class ChangeColumnOnUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :token_expiraton, :token_expiration
  end
end
