class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
    @observation = Observation.where(student_id: @student.id)
    @observations = @student.observations.sort do |obs_a, obs_b|
      obs_b.creation_date <=> obs_a.creation_date
    end
  end

  def index
    @students = Student.all
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :classroom)
  end
end
