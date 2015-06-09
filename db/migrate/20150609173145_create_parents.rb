class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :teacher_id
      t.string :name
      t.string :student_name
      t.string :email

      t.timestamps null: false
    end
  end
end
