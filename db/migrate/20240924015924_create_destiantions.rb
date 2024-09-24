class CreateDestiantions < ActiveRecord::Migration[7.1]
  def change
    create_table :destiantions do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :order

      t.timestamps
    end
  end
end
