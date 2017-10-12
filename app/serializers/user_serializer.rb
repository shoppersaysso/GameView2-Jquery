class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :gameview_level, :links
  has_many :reviews
  has_many :games

  def links
    { self: user_path(object.id) }
  end

end
