class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      
      t.integer :user_id
      t.string  :title
      t.text    :body
      t.string  :subject
      t.string  :child_subject
      
      t.timestamps
    end
  end
end
