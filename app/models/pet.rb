class Pet < ApplicationRecord
    has_many :memories
    validates :name, :bio, presence: true
end
