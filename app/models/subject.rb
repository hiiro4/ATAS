class Subject < ApplicationRecord
    has_many :child_subjects, dependent: :restrict_with_error
end
