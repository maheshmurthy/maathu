class AddKeywordToSpecial < ActiveRecord::Migration
  def self.up
    add_column :specials, :keyword, :string
  end

  def self.down
    remove_column :specials, :keyword
  end
end
