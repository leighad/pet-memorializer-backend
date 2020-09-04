class MemorySerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :description, :image, :favorite, :pet_id

  belongs_to :pet
end
