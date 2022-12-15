class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  #バリデーション
  #コメントが空の場合はDBに保存しないまたメソッドの返り値がfalseならばバリデーションの検証を行う
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end