class Fix < ActiveRecord::Migration[7.1]
  def change
    rename_table :destiantions, :destinations
  end
end
