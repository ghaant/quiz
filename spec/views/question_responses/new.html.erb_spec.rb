require 'rails_helper'

RSpec.describe "question_responses/new", type: :view do
  before(:each) do
    assign(:question_response, QuestionResponse.new(
      text: "MyString",
      question: nil,
      correct: false
    ))
  end

  it "renders new question_response form" do
    render

    assert_select "form[action=?][method=?]", question_responses_path, "post" do

      assert_select "input[name=?]", "question_response[text]"

      assert_select "input[name=?]", "question_response[question_id]"

      assert_select "input[name=?]", "question_response[correct]"
    end
  end
end
