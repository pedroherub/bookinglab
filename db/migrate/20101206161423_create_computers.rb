class CreateComputers < ActiveRecord::Migration
  def self.up
    create_table :computers do |t|
      t.string :block
      t.integer :room
      t.integer :number

      t.timestamps
    end
  end

  def self.down
    drop_table :computers
  end
end
