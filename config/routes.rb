Rails.application.routes.draw do
  root to: 'quizzes#show'

  resources :questions, only: [:index, :show] do
    resources :question_responses, only: [:index] do
      member do
        post :toggle
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
