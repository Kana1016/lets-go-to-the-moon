class CreateRecords < ActiveRecord::Migration[7.2]
  def change
    create_table :records do |t|
      t.integer :jump_time
      t.integer :jump_count
      t.integer :jump_total_count
      t.integer :walk_count
      t.integer :total_distance
      t.date :recorded_at, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
