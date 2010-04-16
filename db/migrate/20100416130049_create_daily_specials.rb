class CreateDailySpecials < ActiveRecord::Migration
  def self.up
    create_table :daily_specials do |t|
      t.string :day
      t.integer :votes
      t.integer :bar_id

      t.timestamps
    end
  end

  def self.down
    drop_table :daily_specials
  end
end
