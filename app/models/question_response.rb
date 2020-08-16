class QuestionResponse < ApplicationRecord
  belongs_to :question

  validates :text, presence: true

  def right?
    correct == checked
  end
end
