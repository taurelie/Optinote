class Observation < ApplicationRecord
  CATEGORY = ["Relation à l'autre", "Expression", "Attitudes corporelles", "Gestes / Actes quotidiens", "Écriture", "Lecture", "Mathématiques", "Comportement", "Environnement", "Absence", "Autre"]
  # OBS_COLOR = ["#E4572E", "#FFCF00", "#6FEB84"]
  OBS_COLOR = ["#F2C501", "#94D8CB", "#2D95C2"]

  belongs_to :student
  belongs_to :user

  validates :category, presence: true
  validates :obs_color, presence: true

  def creation_date
    self.obs_date || self.created_at
  end

  def display_date
    self.creation_date.strftime("%d/%m/%Y")
  end
end
