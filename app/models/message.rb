class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  #コメントが空の場合はDBに保存しない
  validates :content, presence: true
end
