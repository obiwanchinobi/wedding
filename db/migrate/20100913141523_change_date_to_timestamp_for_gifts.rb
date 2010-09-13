class ChangeDateToTimestampForGifts < ActiveRecord::Migration
  def self.up
    change_column(:gifts, :purchased_on, :timestamp)
  end

  def self.down
    change_column(:gifts, :purchased_on, :date)
  end
end
