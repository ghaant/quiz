 require 'rails_helper'

RSpec.describe "/quizzes", type: :request do
  let!(:quiz) { FactoryBot.create(:quiz) }

  describe "GET /show" do
    it "renders a successful response" do
      get root_url
      expect(response).to be_successful
    end
  end

  describe "PATCH /finish" do
    before do
      patch quiz_finish_url
    end

    it "finishes the requested quiz" do
      quiz.reload
      expect(quiz.finished).to be true
    end

    it 'redirects to root' do
      expect(response).to redirect_to(root_url)
    end
  end

  describe "PATCH /start" do
    before do
      patch quiz_start_url
    end

    it "starts the requested quiz" do
      quiz.reload
      expect(quiz.finished).to be false
    end

    it 'redirects to root' do
      expect(response).to redirect_to(root_url)
    end
  end
end
