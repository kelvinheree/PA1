class AddNameToEnrollments < ActiveRecord::Migration[5.0]
  def change
    add_column :enrollments, :name, :string
  end
end
