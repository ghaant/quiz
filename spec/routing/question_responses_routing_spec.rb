require "rails_helper"

RSpec.describe QuestionResponsesController, type: :routing do
  describe "routing" do
    it "routes to #toggle" do
      expect(post: "/questions/1/question_responses/1/toggle").to route_to("question_responses#toggle", question_id: "1", id: "1")
    end
  end
end
