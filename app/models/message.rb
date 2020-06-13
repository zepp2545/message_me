class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true
    scope :custom_disply, -> { order("created_at ASC").last(20) }
end
