class Question < ApplicationRecord
  has_one_attached :image

  belongs_to :users, optional: true
  has_many :answers,dependent: :destroy
  
  validates :title, presence: true, length: { maximum: 50 }
end
