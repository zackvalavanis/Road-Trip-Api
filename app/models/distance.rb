class Distance < ApplicationRecord
  belongs_to :start_location, class_name: 'Destination'
  belongs_to :end_location, class_name: 'Destination'
end
