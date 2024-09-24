class Journey < ApplicationRecord
  has_many :destinations, dependent: :destroy
end
