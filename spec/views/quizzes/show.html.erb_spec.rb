require 'rails_helper'

RSpec.describe "quizzes/show", type: :view do
  let!(:response) { FactoryBot.create(:question_response, correct: true, checked: true) }

  context 'when the quiz is in progress' do
    before do
      response.question.quiz.finished = false
      @quiz = assign(:quiz, response.question.quiz)
      render
    end

    it 'renders the quiz title' do
      expect(rendered).to match(response.question.quiz.title)
    end

    it 'renders the question' do
      expect(rendered).to match(response.question.text)
    end

    it 'renders the response' do
      expect(rendered).to match(response.text)
    end

    it 'renders the checkbox' do
      assert_select "*[@id='checked']"
    end

    it 'renders the Finish button' do
      assert_select "body > form > button", text: 'Finish'
    end
  end

  context 'when the quiz is finished' do
    before do
      response.question.quiz.finished = true
      @quiz = assign(:quiz, response.question.quiz)
      render
    end

    it 'renders the quiz title' do
      expect(rendered).to match(response.question.quiz.title)
    end

    it 'renders the heading' do
      expect(rendered).to match('Your results')
    end

    it 'renders the result sentence' do
      expect(rendered).to match('You got right')
    end

    it 'renders the Re-do button' do
      assert_select "body > form > button", text: 'Re-do the quiz'
    end
  end
end
