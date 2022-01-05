class Observation < ApplicationRecord
  CATEGORY = ["Relation à l'autre", "Expression", "Attitudes corporelles", "Gestes / Actes quotidiens", "Écriture", "Lecture", "Mathématiques", "Comportement", "Environnement", "Autre"]
  OBS_COLOR = ["green", "grey", "red"]
  belongs_to :student
  belongs_to :user
end
