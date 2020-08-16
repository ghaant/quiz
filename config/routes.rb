Rails.application.routes.draw do
  root to: 'quizzes#show'
  patch '/finish', to: 'quizzes#finish', as: 'quiz_finish'
  patch '/start', to: 'quizzes#start', as: 'quiz_start'

  resources :questions, only: [] do
    post '/question_responses/:id/toggle', to: 'question_responses#toggle', as: 'response_toggle'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
