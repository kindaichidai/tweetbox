class SorceryExternal < ActiveRecord::Migration[5.2]
  def change
    create_table :authentications do |t|
      t.integer :user_id, :null => false
      t.string :provider, :null => false
      t.string :uid, :null => false
      t.string :access_token, :default => nil
      t.string :access_token_secret, :default => nil

      t.timestamps :null => false
    end

    add_index :authentications, [:provider, :uid]
  end
end
