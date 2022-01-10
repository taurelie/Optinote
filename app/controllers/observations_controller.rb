
class ObservationsController < ApplicationController
  def new
    @student = Student.find(params[:id])
    @observation = Observation.new
    @observation.student = @student
  end

  def create
    @student = Student.find(params[:id])
    @observation = Observation.new(observation_params)
    @observation.student = @student
    @observation.user = current_user
    if @observation.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def destroy
    @observation = Observation.find(params[:id])
    @student = @observation.student
    @observation.destroy
    redirect_to student_path(@student)
  end

  def index
    @observations = Observation.all
  end

  private

  def observation_params
    params.require(:observation).permit(:obs_date, :category, :note, :obs_color, :student_id, :user_id)
  end
end
