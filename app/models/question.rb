class Question < ApplicationRecord
  has_many_attached :images

  belongs_to :users, optional: true
  has_many :answers,dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 }

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

end
