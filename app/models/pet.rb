class Pet < ApplicationRecord
    has_many :memories
    validates :name, :kind, presence: true
    validates_inclusion_of :gender, :in => ['female', 'male']
end
