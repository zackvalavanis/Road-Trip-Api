class CreateDistances < ActiveRecord::Migration[7.1]
  def change
    create_table :distances do |t|
      t.integer :start_location_id
      t.integer :end_location_id
      t.float :distance
      t.float :duration

      t.timestamps
    end
  end
end
