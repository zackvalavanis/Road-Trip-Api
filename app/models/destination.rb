class Destination < ApplicationRecord
  belongs_to :journey
  has_many :start_location_id
  has_many :end_location_id

  has_many :start_distances, class_name: 'Distance', foreign_key: 'start_location_id'
  has_many :end_distances, class_name: 'Distance', foreign_key: 'end_location_id'
  
end
