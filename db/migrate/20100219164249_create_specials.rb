class CreateSpecials < ActiveRecord::Migration
  def self.up
    create_table :specials do |t|
      t.text :sunday
      t.text :monday
      t.text :tuesday
      t.text :wednesday
      t.text :thursday
      t.text :friday
      t.text :saturday

      t.timestamps
    end
  end

  def self.down
    drop_table :specials
  end
end
