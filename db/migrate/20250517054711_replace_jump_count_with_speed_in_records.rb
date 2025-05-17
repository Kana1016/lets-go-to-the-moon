class ReplaceJumpCountWithSpeedInRecords < ActiveRecord::Migration[7.2]
  def change
    remove_column :records, :jump_count, :integer
    add_column :records, :speed, :integer, default: 1
  end
end
