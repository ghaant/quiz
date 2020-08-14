class CreateUserResponses < ActiveRecord::Migration[6.0]
  def up
    create_table :user_responses do |t|
      t.integer :question_id, null: false
      t.integer :question_response_id, null: false

      t.timestamps
    end

    add_foreign_key :user_responses, :questions
    add_foreign_key :user_responses, :question_responses
  end

  def down
    drop_table :user_responses
  end
end
