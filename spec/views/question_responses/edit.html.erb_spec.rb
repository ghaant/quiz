require 'rails_helper'

RSpec.describe "question_responses/edit", type: :view do
  before(:each) do
    @question_response = assign(:question_response, QuestionResponse.create!(
      text: "MyString",
      question: nil,
      correct: false
    ))
  end

  it "renders the edit question_response form" do
    render

    assert_select "form[action=?][method=?]", question_response_path(@question_response), "post" do

      assert_select "input[name=?]", "question_response[text]"

      assert_select "input[name=?]", "question_response[question_id]"

      assert_select "input[name=?]", "question_response[correct]"
    end
  end
end
