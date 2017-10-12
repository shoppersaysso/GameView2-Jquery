class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  belongs_to :game, serializer: GameSerializer
  belong_to :user, serializer: UserSerializer
end
