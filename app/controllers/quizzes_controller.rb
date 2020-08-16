class QuizzesController < ApplicationController
  before_action :set_quiz

  def show
  end

  def finish
    @quiz.update_attributes(finished: true)

    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.first
    end
end
