class AddTermToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :term, :string
  end
end
