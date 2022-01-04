class AddForeignKeyClassroomToStudents < ActiveRecord::Migration[6.1]
  def change
    add_reference :students, :classroom, index: true, foreign_key: true
  end
end
