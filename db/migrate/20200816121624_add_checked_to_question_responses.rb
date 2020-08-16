class AddCheckedToQuestionResponses < ActiveRecord::Migration[6.0]
  def change
    add_column :question_responses, :checked, :boolean, null: false,  default: false
  end
end
