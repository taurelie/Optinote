class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
  end

  def brouillon
    @observation = Observation.new # needed to instantiate the form_for
  end

#   def createb
#     @observation = Message.new(observation_params) # needed to instantiate the form_for
#     @observation.save
#   end

#   private

#   def observation_params
#     params.require(:observation).permit(:name)
#   end
end
