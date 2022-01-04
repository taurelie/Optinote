class Student < ApplicationRecord
  has_many :observations
  belongs_to :classroom
end
