class Addfkeys < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :distances, :destinations, column: :start_location_id
    add_foreign_key :distances, :destinations, column: :end_location_id
  end
end
