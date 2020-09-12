class AddIndexToEmployeeSkills < ActiveRecord::Migration[5.2]
  def change
    add_index :employee_skills, [:employee_id, :skill_id], unique: true
  end
end
