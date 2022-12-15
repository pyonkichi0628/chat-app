class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  #コメントが空の場合はDBに保存しない
  validates :content, presence: true
end
