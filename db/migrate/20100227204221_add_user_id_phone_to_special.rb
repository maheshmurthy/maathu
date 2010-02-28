class AddUserIdPhoneToSpecial < ActiveRecord::Migration
  def self.up
    add_column :specials, :userid, :integer
    add_column :specials, :phone, :integer
  end

  def self.down
    remove_column :specials, :phone
    remove_column :specials, :userid
  end
end
