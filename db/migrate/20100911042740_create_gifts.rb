class CreateGifts < ActiveRecord::Migration
  def self.up
    create_table :gifts do |t|
      t.string :description
      t.boolean :is_admin, :default => 0
      t.date :purchased_on

      t.timestamps
    end
  end

  def self.down
    drop_table :gifts
  end
end
