FactoryBot.define do
  factory :question do
    sequence(:text) { |n| "Some question #{n}" }
    association :quiz
  end
end
