class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.references :student
      t.references :computer
      t.references :timeunit
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
