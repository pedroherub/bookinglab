class CreateTimeunits < ActiveRecord::Migration
  def self.up
    create_table :timeunits do |t|
      t.time :timein
      t.time :timeout

      t.timestamps
    end
  end

  def self.down
    drop_table :timeunits
  end
end
