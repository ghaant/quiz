require 'rails_helper'

RSpec.describe Question, type: :model do
  let!(:question) { FactoryBot.create(:question) }

  it 'is valid' do
    expect(question).to be_valid
  end

  it 'must be right when all responses are right' do
    allow(question).to receive(:responses_count).and_return(5)
    allow(question).to receive(:right_responses_count).and_return(5)

    expect(question.right?).to be true
  end

  it 'must be not right when not all responses are right' do
    allow(question).to receive(:responses_count).and_return(5)
    allow(question).to receive(:right_responses_count).and_return(3)

    expect(question.right?).to be false
  end
end
