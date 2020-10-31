class Message < ApplicationRecord
  validates :content, presence: true

   after_create_commit {MessageBroadcastJob.perform_later self}

   belong_to :user
   belong_to :room
end
