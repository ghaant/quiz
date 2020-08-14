require 'rails_helper'

RSpec.describe "user_responses/new", type: :view do
  before(:each) do
    assign(:user_response, UserResponse.new(
      question_id: 1,
      question_response_id: 1
    ))
  end

  it "renders new user_response form" do
    render

    assert_select "form[action=?][method=?]", user_responses_path, "post" do

      assert_select "input[name=?]", "user_response[question_id]"

      assert_select "input[name=?]", "user_response[question_response_id]"
    end
  end
end
