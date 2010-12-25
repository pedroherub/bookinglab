require File.dirname(__FILE__) + '/../test_helper'

class TimeunitTest < ActiveSupport::TestCase

test "should not save timeunit without timein or timeout" do
  timeunit = Timeunit.new
  assert !timeunit.save, "Saved the timeunit without a timein or a timeout"
end

end

# == Schema Information
#
# Table name: timeunits
#
#  id         :integer         not null, primary key
#  timein     :time
#  timeout    :time
#  created_at :datetime
#  updated_at :datetime
#

