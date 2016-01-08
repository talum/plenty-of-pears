class CreateDailyMatches < ActiveRecord::Migration
  def change
    create_table :daily_matches do |t|
      t.integer :user_id
      t.integer :option_id
      t.timestamps null: false
    end
  end
end
