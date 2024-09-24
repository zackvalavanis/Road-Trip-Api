class CreateJourneys < ActiveRecord::Migration[7.1]
  def change
    create_table :journeys do |t|
      t.float :total_distance
      t.float :total_time
      t.float :fuel_needed

      t.timestamps
    end
  end
end
