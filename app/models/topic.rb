class Topic < ApplicationRecord
  has_many :quizzes, dependent: :destroy
  validates :name, presence:   true, length: { maximum: 50 },
            uniqueness: { case_sensitive: false }
end
