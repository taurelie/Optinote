
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
    @observation.obs_color = Observation::OBS_COLOR.key(@observation.obs_color)
    if @observation.save
      redirect_to new_observation_path(id: @student.id), notice: "Observation créée pour #{@student.first_name} #{@student.last_name}"
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

  def edit
    @observation = Observation.find(params[:id])
    @student = @observation.student
  end

  def update
    @observation = Observation.find(params[:id])
    @student = @observation.student
    @observation.update(observation_params)
    @observation.obs_color = Observation::OBS_COLOR.key(@observation.obs_color)
    # Will raise ActiveModel::ForbiddenAttributesError
    @observation.save
    redirect_to student_path(@student)
  end

  private

  def observation_params
    params.require(:observation).permit(:obs_date, :category, :note, :obs_color, :student_id, :user_id)
  end
end
