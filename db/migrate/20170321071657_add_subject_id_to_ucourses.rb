class AddSubjectIdToUcourses < ActiveRecord::Migration[5.0]
  def change
    add_column :ucourses, :subject_id, :string
  end
end
