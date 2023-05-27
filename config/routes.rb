Rails.application.routes.draw do
  root to: "pages#home"
  resources :courses, only: [:index, :show] do
    resources :enrollments, only: [:new, :create]
  end
end
