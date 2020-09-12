Rails.application.routes.draw do
  resources :employee_skills, except: :new
  get '/employee_skills/new/:id' => 'employee_skills#new', as: 'new_employee_skill'
  resources :employees
  root 'employees#index'
  get '/table' => 'employees#table', as: 'table'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
