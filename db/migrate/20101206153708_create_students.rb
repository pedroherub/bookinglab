class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.integer :studentid
      t.string :name
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :email
      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
