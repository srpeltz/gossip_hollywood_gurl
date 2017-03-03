class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  acts_as_votable
  validates :title, presence: true
  validates :body, presence: true
end
