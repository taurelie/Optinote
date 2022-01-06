class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
    @observations = Observation.where(student_id: @student.id)
  end

  def index
    @students = Student.all
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :classroom)
  end
end
