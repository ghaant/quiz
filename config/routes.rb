Rails.application.routes.draw do
  resources :quizzes
  resources :user_responses
  resources :question_responses
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
