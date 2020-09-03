class Pet < ApplicationRecord
    has_many :memories
    validates :name, :bio, presence: true
    validates_inclusion_of :gender, :in => ['female', 'male']
end
