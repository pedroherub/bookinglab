require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: bookings
#
#  id          :integer         not null, primary key
#  student_id  :integer
#  computer_id :integer
#  timeunit_id :integer
#  date        :date
#  created_at  :datetime
#  updated_at  :datetime
#

