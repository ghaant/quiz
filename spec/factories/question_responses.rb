FactoryBot.define do
  factory :question_response do
    sequence(:text) { |n| "Some response #{n}" }
    association :question
  end
end
