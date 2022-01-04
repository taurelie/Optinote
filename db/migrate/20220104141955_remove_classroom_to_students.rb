class RemoveClassroomToStudents < ActiveRecord::Migration[6.1]
  def change
    remove_column :students, :classroom
  end
end
