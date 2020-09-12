class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :department
      t.string :gender
      t.date :joining_date
      t.decimal :salary, precision: 20, scale: 2
      t.string :degree

      t.timestamps
    end
  end
end
