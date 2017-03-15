class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :middle
      t.string :email
      t.string :first
      t.string :last
      t.string :type

      t.timestamps
    end
  end
end
