class Record < ApplicationRecord
  belongs_to :user

  before_save :calculate_total_distance

  enum speed: { slow: 100, normal: 140, fast: 180 }

  validates :jump_time, numericality: { only_integer: true }
  validates :jump_count, numericality: { only_integer: true }
  validates :jump_total_count, numericality: { only_integer: true }, allow_nil: true
  validates :walk_count, numericality: { only_integer: true }
  validates :total_distance, presence: true
  validates :recorded_at, presence: true

  private

  def calculate_total_distance
    # 仮の係数: 歩数1歩=0.6m、縄跳び1回=0.3m
    self.total_distance = (walk_count.to_i * 0.6 + jump_count.to_i * 0.3).floor
  end
end
