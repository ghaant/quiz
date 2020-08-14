class CreateQuestions < ActiveRecord::Migration[6.0]
  def up
    create_table :questions do |t|
      t.string :text, null: false
      t.integer :quiz_id, null: false

      t.timestamps
    end

    add_foreign_key :questions, :quizzes
  end

  def down
    drop_table :questions
  end
end
