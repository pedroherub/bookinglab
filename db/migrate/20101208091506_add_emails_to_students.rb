class AddEmailsToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :email, :string
    Student.reset_column_information
  end

  def self.down
    remove_column :students, :email
  end
end
