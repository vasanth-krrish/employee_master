Rails.application.routes.draw do
  resources :employee_skills, except: :new
  get '/employee_skills/new/:id' => 'employee_skills#new', as: 'new_employee_skill'
  resources :employees
  root 'employees#index'
  get '/table' => 'employees#table', as: 'table'
  resources :search_bies, only: :create
  get '/skill/:id/degree/:name' => 'search_bies#skilldegree', as: 'show_skill_degree'
  get '/skill/:id' => 'search_bies#skill', as: 'show_skill'
  get '/degree/:id' => 'search_bies#degree', as: 'show_degree'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
