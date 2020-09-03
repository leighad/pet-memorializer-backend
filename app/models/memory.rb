class Memory < ApplicationRecord
  belongs_to :pet
  validates :title, :description, presence: true
end
