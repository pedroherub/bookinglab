class CreateStudentSessions < ActiveRecord::Migration
  def self.up
    create_table :student_sessions do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :student_sessions
  end
end
