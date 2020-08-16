Rails.application.routes.draw do
  root to: 'quizzes#show'

  resources :questions, only: [:show] do
    post '/question_responses/:id/toggle', to: 'question_responses#toggle', as: 'response_toggle'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
