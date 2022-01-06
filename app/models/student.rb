class Student < ApplicationRecord
  has_many :observations
  belongs_to :classroom
  has_one_attached :photo
end
