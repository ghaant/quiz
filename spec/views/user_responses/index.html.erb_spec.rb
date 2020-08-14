require 'rails_helper'

RSpec.describe "user_responses/index", type: :view do
  before(:each) do
    assign(:user_responses, [
      UserResponse.create!(
        question_id: 2,
        question_response_id: 3
      ),
      UserResponse.create!(
        question_id: 2,
        question_response_id: 3
      )
    ])
  end

  it "renders a list of user_responses" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
