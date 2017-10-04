class GameAttribute < ActiveRecord::Base
  has_many :games_game_attributes
  has_many :games, through: :games_game_attributes

  validates :genre, :esrb_rating, presence: true

  def is_multiplayer?
   self.multiplayer ? 'Multiplayer' : 'Single-Player'
 end
end
