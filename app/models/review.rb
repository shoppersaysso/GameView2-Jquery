class Review < ActiveRecord::Base
  scope :most_recent, -> (limit) { order("created_at desc").limit(limit) }

  belongs_to :game
  has_many :users, through: :game

  validates :title, :content, presence: true
end
