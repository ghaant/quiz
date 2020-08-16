 require 'rails_helper'

RSpec.describe "/question_responses", type: :request do
  describe "POST /toggle" do
    it "toggles the requested question_response" do
      question_response = FactoryBot.create(:question_response)
      old_state = question_response.checked
      post question_response_toggle_url(question_response.question, question_response)
      question_response.reload
      expect(question_response.checked).not_to be(old_state)
    end
  end
end
