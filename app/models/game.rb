class Game < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_many :games_game_attributes
  has_many :game_attributes, through: :games_game_attributes, dependent: :destroy
  #accepts_nested_attributes_for :game_attributes, allow_destroy: true

  def game_attributes_attributes=(attr)
    ga_hash = attr[0]
    self.game_attributes.build(ga_hash)
  end

  validates :title, :developer, presence: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("content LIKE ?", "%#{search}%")
  end

end
