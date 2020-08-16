class QuestionResponsesController < ApplicationController
  before_action :set_question_response, only: [:toggle]

  def toggle
    @question_response.update_attributes(checked: !@question_response.checked)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_response
      @question_response = QuestionResponse.find(params[:id])
    end
end
