class Event < ActiveRecord::Base
  has_many :event_locations
  has_many :locations, through: :event_locations
end
