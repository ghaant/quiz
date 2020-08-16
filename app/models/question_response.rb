class QuestionResponse < ApplicationRecord
  belongs_to :question

  def right?
    correct == checked
  end
end
