require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
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

