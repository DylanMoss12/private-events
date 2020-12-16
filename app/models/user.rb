class User < ApplicationRecord
  validates :username, uniqueness: true

  has_many :events, foreign_key: 'creator_id'

  has_many :event_attendees, foreign_key: :event_attendee_id
  has_many :attended_events, through: :event_attendees
end
