class Observation < ApplicationRecord
  CATEGORY = ["Relation à l'autre", "Expression", "Attitudes corporelles", "Gestes / Actes quotidiens", "Écriture", "Lecture", "Mathématiques", "Comportement", "Environnement", "Absence", "Autre"]
  OBS_COLOR = {
    "Difficultés": "#F2C501",
    "Neutre": "#94D8CB",
    "Forces": "#2D95C2",
  }

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
