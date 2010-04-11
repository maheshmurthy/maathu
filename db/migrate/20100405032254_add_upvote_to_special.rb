class AddUpvoteToSpecial < ActiveRecord::Migration
  def self.up
    add_column :specials, :upvote, :integer, :default => 0
  end

  def self.down
    remove_column :specials, :upvote
  end
end
