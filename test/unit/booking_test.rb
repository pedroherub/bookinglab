require File.dirname(__FILE__) + '/../test_helper'

class BookingTest < ActiveSupport::TestCase

test "should not save booking without student computer or timeunit" do
  booking = Booking.new
  assert !booking.save, "Saved the booking without a student, a computer or a timeunit"
end

end

# == Schema Information
#
# Table name: bookings
#
#  id          :integer         not null, primary key
#  student_id  :integer
#  computer_id :integer
#  booking_id :integer
#  date        :date
#  created_at  :datetime
#  updated_at  :datetime
#

