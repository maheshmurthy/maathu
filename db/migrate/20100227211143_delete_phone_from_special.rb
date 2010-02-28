class DeletePhoneFromSpecial < ActiveRecord::Migration
  def self.up
    remove_column :specials, :phone
    add_column :specials, :phone, :string
  end

  def self.down
    remove_column :specials, :phone
    add_column :specials, :phone, :integer
  end
end
