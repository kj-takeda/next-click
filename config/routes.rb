Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'inputs#new'
  resources :inputs do
    collection do
      get :job_type_serch
      get :answer
    end 
  end
  resources :jobs
  resources :plans
end
