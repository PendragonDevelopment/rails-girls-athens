class Event < ActiveRecord::Base
  has_many :locations, through: :event_locations
end
