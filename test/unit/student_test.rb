require File.dirname(__FILE__) + '/../test_helper'

class StudentTest < ActiveSupport::TestCase

test "should not save student without studentid name email or pasword" do
  student = Student.new
  assert !student.save, "Saved the student without a studentid, a name, an email or a pasword"
end

test "should save studentid only as an integer" do
  student = Student.new
  assert !student.studentid.integer?, "Saved the studentid not as an integer"
end

end

# == Schema Information
#
# Table name: students
#
#  id                :integer         not null, primary key
#  studentid         :integer
#  name              :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  email             :string(255)
#  crypted_password  :string(255)
#  password_salt     :string(255)
#  persistence_token :string(255)
#

