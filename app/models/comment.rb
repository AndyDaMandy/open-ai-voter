class Comment < ApplicationRecord
  belongs_to :chat

  validates :content, presence: true, length: { minimum: 2 }
end
