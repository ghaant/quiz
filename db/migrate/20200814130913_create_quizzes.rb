class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :title, null: false
      t.boolean :finished, null: false, default: false

      t.timestamps
    end
  end
end
