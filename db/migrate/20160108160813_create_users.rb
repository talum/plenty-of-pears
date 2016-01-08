class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :location_id
      t.integer :match_radius
      t.string :current_project
      t.string :provider
      t.string :uid
      t.string :oauth_token
      t.string :oauth_expires_at
      t.string :profile_picture

      t.timestamps null: false
    end
  end
end
