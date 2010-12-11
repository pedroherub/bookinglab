class AddForeignKeys < ActiveRecord::Migration
  def self.up
    #add foreign keys
    execute <<-SQL
      ALTER TABLE bookings
        ADD CONSTRAINT fk_bookings_students
        FOREIGN KEY (student_id)
        REFERENCES students(id);
      ALTER TABLE bookings
        ADD CONSTRAINT fk_bookings_computers
        FOREIGN KEY (computer_id)
        REFERENCES computers(id);
      ALTER TABLE bookings
        ADD CONSTRAINT fk_bookings_timeunits
        FOREIGN KEY (timeunit_id)
        REFERENCES timeunits(id)
    SQL
  end

  def self.down
     #delete foreign keys
    execute <<-SQL
      ALTER TABLE bookings
        DROP FOREIGN KEY fk_bookings_students;
      ALTER TABLE bookings
        DROP FOREIGN KEY fk_bookings_computers;
      ALTER TABLE bookings
        DROP FOREIGN KEY fk_bookings_timeunits
    SQL
  end
end
