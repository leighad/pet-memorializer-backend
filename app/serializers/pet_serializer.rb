class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :gender, :age, :born, :passed, :bio, :quote, :image

  has_many :memories
end
