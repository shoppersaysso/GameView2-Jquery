class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :developer, :genre, :esrb_rating, :multiplayer, :status, :links
  has_many :reviews

  def links
    { self: game_path(object.id) }
  end

  def details
    object.details.map do |d|
      {
        Developer: d.developer,
        Genre: d.genre,
        ESRB: d.esrb_rating,
        Multiplayer: d.is_multiplayer?
      }
    end
  end

end
