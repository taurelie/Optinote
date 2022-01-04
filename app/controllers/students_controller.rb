class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :classroom)
  end
end
