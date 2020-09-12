json.extract! employee, :id, :name, :email, :department, :gender, :joining_date, :salary, :degree, :created_at, :updated_at
json.url employee_url(employee, format: :json)
