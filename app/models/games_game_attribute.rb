class GamesGameAttribute < ActiveRecord::Base
  belongs_to :game
  belongs_to :game_attribute
end
