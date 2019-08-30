class Message < ApplicationRecord
  enum status: {unseen: 0, seen: 1}

  belongs_to :sender, class_name: User.name
  belongs_to :receiver, class_name: User.name

  validates :sender_id, presence: true
  validates :receiver_id, presence: true
end