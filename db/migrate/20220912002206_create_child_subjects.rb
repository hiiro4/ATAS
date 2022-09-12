class CreateChildSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :child_subjects do |t|

      t.string :child_subject_name

      t.timestamps
    end
  end
end
