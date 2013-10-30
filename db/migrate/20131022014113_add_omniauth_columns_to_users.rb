class AddOmniauthColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :omni_provider, :string
    add_column :users, :omni_uid, :string
    add_column :users, :omni_user, :string
    add_column :users, :oauth_token, :string
    add_column :users, :oauth_expires_at, :datetime
  end
end
