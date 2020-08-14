require 'rails_helper'

RSpec.describe "question_responses/index", type: :view do
  before(:each) do
    assign(:question_responses, [
      QuestionResponse.create!(
        text: "Text",
        question: nil,
        correct: false
      ),
      QuestionResponse.create!(
        text: "Text",
        question: nil,
        correct: false
      )
    ])
  end

  it "renders a list of question_responses" do
    render
    assert_select "tr>td", text: "Text".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
