class User < ActiveRecord::Base
  #does just unique instead of uniqueness work as well?
  validates :email, presence: true, uniqueness: true, format: { with: /.*@.*[.].*/}
  validates :password_digest, presence: true

  
  has_secure_password

  has_many :event_attendances
  has_many :attended_events, through: :event_attendances, source: :event

  has_many :created_events, class_name: "Event"
end
