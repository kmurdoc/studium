class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :firstName
      t.string :lastName
      t.string :classLevel
      t.string :major
      t.string :course1
      t.string :course2
      t.string :course3
      t.string :course4
      t.string :course5

      t.timestamps
    end
  end
end
