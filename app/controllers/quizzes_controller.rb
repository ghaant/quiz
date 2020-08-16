class QuizzesController < ApplicationController
  before_action :set_quiz

  def show
  end

  def finish
    if @quiz.update(finished: true)
      redirect_to :root
    else
      redirect_to @quiz, alert: 'Unable to finish the quiz.'
    end
  end

  def start
    if @quiz.update(finished: false)
      redirect_to :root
    else
      redirect_to @quiz, alert: 'Unable to start the quiz.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.first
    end
end
