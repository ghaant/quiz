Rails.application.routes.draw do
  root to: 'quizzes#show'

  resources :question_responses
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
