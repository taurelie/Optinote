class ObservationsController < ApplicationController
  def new
    @observation = Observation.new
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
