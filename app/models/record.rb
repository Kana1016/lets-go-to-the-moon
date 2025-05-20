class Record < ApplicationRecord
  belongs_to :user

  enum speed: { slow: 100, normal: 140, fast: 180 }

  validates :jump_time, numericality: { only_integer: true }, allow_blank: true
  validates :jump_total_count, numericality: { only_integer: true }, allow_blank: true
  validates :walk_count, numericality: { only_integer: true }, allow_blank: true
  validates :total_distance, presence: true
  validates :recorded_at, presence: true
end
