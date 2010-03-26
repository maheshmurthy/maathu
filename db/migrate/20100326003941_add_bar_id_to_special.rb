class AddBarIdToSpecial < ActiveRecord::Migration
  def self.up
    add_column :specials, :bar_id, :integer
  end

  def self.down
    remove_column :specials, :bar_id
  end
end
