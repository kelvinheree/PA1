class CreateUcourses < ActiveRecord::Migration[5.0]
  def change
    create_table :ucourses do |t|
      t.float :credits
      t.text :subjects
      t.string :name
      t.text :requirements
      t.string :description
      t.string :string
      t.string :continuity_id
      t.string :term
      t.boolean :independent_study
      t.string :type
      t.string :code

      t.timestamps
    end
  end
end
