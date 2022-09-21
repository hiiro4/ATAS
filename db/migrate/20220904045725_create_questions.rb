class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|

      t.integer :user_id

      t.integer :subject_id
      t.string  :subject_name

      t.integer :child_subject_id
      t.string  :child_subject_name

      t.string  :title
      t.text    :body

      t.timestamps
    end
  end
end
