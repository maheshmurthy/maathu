class AddUserToBars < ActiveRecord::Migration
  def self.up
    add_column :bars, :user_id, :integer
  end

  def self.down
    remove_column :bars, :user_id
  end
end
