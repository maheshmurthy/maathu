class CreateBars < ActiveRecord::Migration
  def self.up
    create_table :bars do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :bars
  end
end
