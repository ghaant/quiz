class QuizzesController < ApplicationController
  def show
    @quiz = Quiz.first
  end
end
