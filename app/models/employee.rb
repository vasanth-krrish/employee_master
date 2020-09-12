class Employee < ApplicationRecord
  has_many :employee_skills
  has_one_attached :photo
  has_many :skills, through: :employee_skills
end
