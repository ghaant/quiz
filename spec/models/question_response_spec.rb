require 'rails_helper'

RSpec.describe QuestionResponse, type: :model do
  let!(:response) { FactoryBot.create(:question_response, correct: true, checked: true) }

  it 'is valid' do
    expect(response).to be_valid
  end

  it 'must be right' do
    expect(response.right?).to be true
  end

  it 'must be not right when correct but not checked' do
    response.checked = false
    expect(response.right?).to be false
  end
end
