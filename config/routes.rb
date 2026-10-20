Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
  get "about_us", to: "pages#about_us", as: :about_us
  get "projects", to: "pages#projects", as: :projects
  get "contact", to: "pages#contact", as: :contact

  resources :contact_submissions, only: :create
end
