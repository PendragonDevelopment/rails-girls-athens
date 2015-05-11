class Location < ActiveRecord::Base
  has_many :event_locations
  has_many :events, through: :event_locations
end
