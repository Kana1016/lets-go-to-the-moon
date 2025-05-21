class User < ApplicationRecord
  has_many :records
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :password, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  GOAL_DISTANCE = 384_400 # 月の距離（定数のため大文字定義）
  RABBIT_INTERVAL = 10_000 # うさぎが仲間に加わる数字（月の距離 / 10,000）

  def total_distance
    records.sum(:total_distance) # userモデルに定義しているため、ユーザーを指定する必要はない。（current_user.records.total_distanceとする必要がない）
  end

  def remaining_distance # 残りの距離
    [GOAL_DISTANCE - total_distance, 0].max # 配列にして、最大数を返すようにしている。（負の数値が表示されないようにするため。
  end

  def rabbit_count
    (total_distance / RABBIT_INTERVAL).floor
  end
end
