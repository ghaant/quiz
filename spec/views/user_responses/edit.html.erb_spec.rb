require 'rails_helper'

RSpec.describe "user_responses/edit", type: :view do
  before(:each) do
    @user_response = assign(:user_response, UserResponse.create!(
      question_id: 1,
      question_response_id: 1
    ))
  end

  it "renders the edit user_response form" do
    render

    assert_select "form[action=?][method=?]", user_response_path(@user_response), "post" do

      assert_select "input[name=?]", "user_response[question_id]"

      assert_select "input[name=?]", "user_response[question_response_id]"
    end
  end
end
