class CreateQuestionResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :question_responses do |t|
      t.string :text, null: false
      t.references :question, null: false, foreign_key: true
      t.boolean :correct, null: false, default: false

      t.timestamps
    end
  end
end
