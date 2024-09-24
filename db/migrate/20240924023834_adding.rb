class Adding < ActiveRecord::Migration[7.1]
  def change
    add_reference :destinations, :journey, foreign_key: true
  end
end
