class AddContentToDailySpecials < ActiveRecord::Migration
  def self.up
    add_column :daily_specials, :content, :string
  end

  def self.down
    remove_column :daily_specials, :content
  end
end
