class Game < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  validates :title, :developer, :genre, :esrb_rating, presence: true

  def is_multiplayer?
   self.multiplayer ? 'Multiplayer' : 'Single-Player'
  end

  def details
    details = "Developer:" + self.developer + ", Genre:" + self.genre + ", ESRB:" + self.esrb_rating + ", Multiplayer:" + self.is_multiplayer?
    return details
  end

end
