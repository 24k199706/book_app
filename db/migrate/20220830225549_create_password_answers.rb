class CreatePasswordAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :password_answers do |t|
      t.string :answer
      t.integer :user_id
      t.integer :password_question_id

      t.timestamps
    end
  end
end
