class ChangeDefaultValueOfVotesInDailySpecials < ActiveRecord::Migration
  def self.up
    change_column_default :daily_specials, :votes, 0
  end

  def self.down
    change_column_default :daily_specials, :votes, nil
  end
end
