class Signup < ApplicationRecord
  validates_inclusion_of :time, :in => 0..23

  belongs_to :camper
  belongs_to :activity
end
