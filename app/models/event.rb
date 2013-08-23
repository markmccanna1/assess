class Event < ActiveRecord::Base
  has_many :event_attendances
  has_many :attendees, through: :event_attendances, source: :user
  #possible foreign key declaration

  belongs_to :creator, foreign_key: :user_id, class_name: "User"
end
