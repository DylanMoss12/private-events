class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  has_many :event_attendees, foreign_key: :attended_event_id
  has_many :attendies, through: :event_attendees, source: :event_attendee

  scope :past, -> { where('datetime < ?', DateTime.now) }
  scope :upcoming, -> { where('datetime > ?', DateTime.now) }
end
