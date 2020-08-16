require "rails_helper"

RSpec.describe QuizzesController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(get: "/").to route_to("quizzes#show")
    end


    it "routes to #finish" do
      expect(patch: "/finish").to route_to("quizzes#finish")
    end

    it "routes to #start" do
      expect(patch: "/start").to route_to("quizzes#start")
    end
  end
end
