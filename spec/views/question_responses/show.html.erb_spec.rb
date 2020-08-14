require 'rails_helper'

RSpec.describe "question_responses/show", type: :view do
  before(:each) do
    @question_response = assign(:question_response, QuestionResponse.create!(
      text: "Text",
      question: nil,
      correct: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Text/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
