class Observation < ApplicationRecord
  CATEGORY = ["Relation à l'autre", "Expression", "Attitudes corporelles", "Gestes / Actes quotidiens", "Écriture", "Lecture", "Mathématiques", "Comportement", "Environnement", "Retard", "Autre"]
  OBS_COLOR = ["green", "grey", "red"]
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
