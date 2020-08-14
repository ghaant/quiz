require 'rails_helper'

RSpec.describe "user_responses/show", type: :view do
  before(:each) do
    @user_response = assign(:user_response, UserResponse.create!(
      question_id: 2,
      question_response_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
