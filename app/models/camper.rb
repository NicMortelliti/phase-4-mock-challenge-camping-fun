class Camper < ApplicationRecord
  validates :name, presence: true
  validates_inclusion_of :age, :in => 8..18

  has_many :signups
  has_many :activities, through: :signups
end
