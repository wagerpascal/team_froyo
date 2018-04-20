class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.text :question
      t.text :answer
      t.text :remark
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
